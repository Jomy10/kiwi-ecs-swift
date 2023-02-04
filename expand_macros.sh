SPAWN=${SPAWN:-25}

for file in Macros/*.template
do
  file_name="${file/Macros/}"
  out_loc="Sources/kiwi-ecs/generated${file_name/.template/}"
  # echo $out_loc
  SPAWN=$SPAWN ruby macro.rb $file $out_loc
done
