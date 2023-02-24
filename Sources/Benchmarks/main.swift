
let bench: String
if CommandLine.argc < 2 {
	bench = "uot"
} else {
	bench = CommandLine.arguments[1]
}

// let bench = CommandLine.arguments[1]

var benchmarks: [String:()->()] = [
	"uot": uotOpt,
]

if benchmarks[bench]?() == nil {
	print("Invalid benchmark name: '\(bench)'")
}
