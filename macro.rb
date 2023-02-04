#=========#
# Parsing #
#=========#

FUNCTION_TOKEN='§'

class Iterator
  def initialize(arr)
    @enumerator = arr.to_enum
  end
  
  def next
    begin
      return @enumerator.next
    rescue
      return nil
    end
  end
end

Source = Struct.new :string
Macro = Struct.new :type, :instruction, :body
module MacroType
  FOR = 0
end
ForInstruction = Struct.new :var, :range
MRange = Struct.new :begin, :end

# Variables
Variable = Struct.new :name
EnvVar = Struct.new :name

Function = Struct.new :name, :params

BinaryExpression = Struct.new :left, :operator, :right

def parse(input)
  chars = Iterator.new(input.chars)
  code =  []
  current_source = ""
  while c = chars.next
    case c
    when '<'
      c2 = chars.next
      if c2 == '<'
        while c2 == '<'
          current_source << c

          c = c2
          c2 = chars.next
          if c2.nil? || c2 == '%'
            break
          end
        end
      end
      if c2 == '%'
        if !current_source.empty?
          code << Source.new(current_source)
          current_source = ""
        end
        # <%
        code << parse_template(chars)
      else
        current_source << c + c2
      end # if c = '%'
    when FUNCTION_TOKEN
      if !current_source.empty?
        code << Source.new(current_source)
        current_source = ""
      end
      code << parse_macro_function(chars)
    else
      current_source << c
    end # case c
  end # while
  if !current_source.empty?
    code << Source.new(current_source)
  end

  return code
end

def parse_template(chars)
  unless chars.next == '{'
    raise "expected  '{'"
  end

  cmd = ""
  loop do
    c = chars.next
    break if c == '}'
    cmd << c
  end

  body = ""
  level = 0
  loop do
    c = chars.next
    if c == '%'
      c2 = chars.next
      if c2 == '>'
        if level != 0
          level -= 1
          body << c + c2
        else
          break
        end
      else
        body << c + c2
      end
    elsif c == '<'
      c2 = chars.next
      if c2 == '<'
        while c2 == '<'
          body << c

          c = c2
          c2 = chars.next
          if c2 == '%'
            break
          elsif c2.nil?
            raise "unexpectedly found end of input while parsing template body"
          end
        end
      end
      if c2 == '%'
        level += 1
      end
      body << c + c2
    else
      body << c
    end
  end

  # p cmd, body
  # p parse_instruction(cmd)
  # p parse(body)
  return Macro.new(MacroType::FOR, parse_instruction(cmd), parse(body))
end

def parse_instruction(instr)
  case instr[...instr.index(" ")]
  when "for"
    instr = instr[instr.index(" ")..].strip
    variable = instr[...instr.index(" ")].strip
    instr = instr[instr.index(" ")..].strip
    raise "expected `in` in for instruction" if instr[..instr.index(" ")].strip != "in"
    instr = instr[instr.index(" ")..].strip
    range = instr.split("..")
    r_range = range[1]
    if r_range[0] == "="
      r_range = r_range[1..] + " + 1"
    end
    return ForInstruction.new(variable, MRange.new(parse_var(range[0]), parse_var(r_range)))
  else
    throw "Invalid instruction #{instr[0]}"
  end
end

def parse_var(var)
  return parse_binary_expression(var)
  # var = var.strip
  # if var.to_i.to_s == var
  #   # integer
  #   return var.to_i
  # elsif var.start_with? "$"
  #   # variable
  #   return Variable.new var
  # elsif var.start_with? "ENV"
  #   # environment variable
  #   return EnvVar.new var.split(".")[1]
  # end
end

def parse_macro_function(chars)
  current = :name
  name = ""
  params_s = ""
  loop do
    c = chars.next
    if c.nil?
      raise "unexpectedly found end of input while parsing macro function"
    end

    case c
    when '('
      current = :params
      c = chars.next
      if c.nil?
        raise "unexpectedly found end of input while parsing macro function's arguments"
      end
      if c == ')'
        break
      end
    when ' '
      return Source.new(name) if current == :name
    when ')'
      break
    end

    case current
    when :name
      name << c
    when :params
      params_s << c
    end
  end

  params = []
  quote_level = 0
  cur_param = ""
  params_s.chars.each do |c|
    if c == "," && quote_level == 0
      params << cur_param
      cur_param = ""
      next
    end

    if c == '"' && quote_level == 0
      quote_level += 1
    elsif c == '"' && quote_level == 1 && cur_param[cur_param.length-2] != '\\'
      quote_level -= 1
    end
    
    cur_param << c
  end
  params << cur_param

  params = params
    .map(&:strip)
    .map { |param|
        parse_binary_expression(param)
    }

  return Function.new(name.to_sym, params)
end

def parse_binary_expression(param)
  elems = []
  cur_elem = ""
  quote_level = 0
  for c in param.chars
    if c == ' ' && quote_level == 0
      elems << cur_elem
      cur_elem = ""
    else
      quote_level += 1 if c == '"' && (quote_level == 0 || cur_elem.last == "\\")
      quote_level -= 1 if c == '"' && quote_level == 1 && cur_elem.chars.last != "\\"

      cur_elem << c
    end
  end
  elems << cur_elem

  tokens = elems
    .map { |e| e.strip }
    .map do |elem|
      if elem.start_with? '$'
        Variable.new(elem)
      elsif elem.to_i.to_s == elem
        elem.to_i
      elsif elem.start_with? "ENV"
        EnvVar.new(elem.split(".")[1])
      elsif elem.start_with? '"'
        elem[1..param.length-2]
      elsif elem == "=="
        :equal
      elsif elem == "+"
        :plus
      elsif elem == "-"
        :minus
      else
        raise "invalid argument in binary expression: #{elem}"
      end
    end

  return parse_binary_expression_tokens(tokens)
end

def parse_binary_expression_tokens(tokens)
  [
    [:equal],
    [:gt, :gte, :lt, :lte],
    [:minus, :plus],
    [:divide, :multiply],
    # [:not]
  ].each do |operators|
    tokens.each_with_index do |token,  i|
      if operators.include? token
        return BinaryExpression.new(
          parse_binary_expression_tokens(tokens[0...i]),
          token,
          parse_binary_expression_tokens(tokens[i+1..tokens.length-1])
        )
      end
    end
  end

  # No binary operators found
  if tokens.length > 1
    raise "invalid binary expression (#{tokens})"
  end

  return tokens[0]
end

#=================
# Macro expansion
#=================

def expand(input, functions = Hash.new, variables = Hash.new)
  return input.flat_map do |val|
    if val.is_a? Source
      next val.string
    elsif val.is_a? Macro
      macro = val
      case macro.type
      when MacroType::FOR
        for_instr = macro.instruction
        raise "undefined variable #{for_instr.range.begin}" unless range_begin = get_var(for_instr.range.begin, variables).to_i
        raise "undefined variable #{for_instr.range.end}" unless range_end = get_var(for_instr.range.end, variables).to_i

        next (range_begin...range_end).flat_map do |var_val|
          variables[for_instr.var] = var_val
            
          next variables.inject(expand(macro.body, functions, variables)) do |src, variable|
            src.gsub(variable[0].to_s, variable[1].to_s)
          end
        end
      else
        raise "bug"
      end
    elsif val.is_a? Function
      raise "unknown function #{val.name}" unless fn = functions[val.name]
      next fn.call(val.params, variables)
    else
      raise "bug"
    end
  end.join " "
end

def get_var(var, variables)
  if var.is_a? Integer
    return var
  elsif var.is_a? Variable
    return variables[var.name]
  elsif var.is_a? EnvVar
    return ENV[var.name]
  elsif var.is_a? BinaryExpression
    return eval_binary_expression(var, variables)
  else
    throw "invalid variable #{var}"
  end
end

def eval_binary_expression(expr, variables)
  lhs = eval_binary_expression_element(expr.left, variables).to_i
  rhs = eval_binary_expression_element(expr.right, variables).to_i

  case expr.operator
    when :equal
      return lhs == rhs
    when :plus
      return lhs + rhs
    when :minus
      return lhs - rhs
    when :gt
      return lhs > rhs
    when :gte
      return lhs >= rhs
    when :lt
      return lhs < rhs
    when :lte
      return lhs <= rhs
    when :divide
      return lhs / rhs
    when :multiply
      return lhs * rhs
  end
end

def eval_binary_expression_element(elem, variables)
  return get_var(elem, variables)
  # if elem.is_a? BinaryExpression
  #   eval_binary_expression(elem, variables)
  # elsif elem.is_a? Variable
  #   variables[elem.name]
  # else
  #   elem
  # end
end

#=========
# Execute
#=========

functions = {
  :unless => -> (params, variables) do
    unless eval_binary_expression(params[0], variables)
      return params[1]
    end
  end,
  :if => -> (params, variables) do
    if eval_binary_expression(params[0], variables)
      return params[1]
    end
  end
}

raise "no input file given" unless filename = ARGV[0]
raise "no output file given" unless output_file = ARGV[1]

puts "#{filename} > #{output_file}"

parsed = parse(File.read(filename))
File.write(output_file, expand(parsed, functions))
