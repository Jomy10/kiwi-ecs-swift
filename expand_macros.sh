SPAWN=${SPAWN:-25}
QUERY=${QUERY:-10}
QGET=${QGET:-10}

rm Sources/kiwi-ecs/generated/*.swift

for file in Macros/*.template
do
  file_name="${file/Macros/}"
  out_loc="Sources/kiwi-ecs/generated${file_name/.template/}"
  # echo $out_loc
  SPAWN=$SPAWN QUERY=$QUERY QGET=$QGET ruby macro.rb $file $out_loc
done
