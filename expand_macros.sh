SPAWN=${SPAWN:-25}
QGET=${QGET:-25}

rm Sources/kiwi-ecs/generated/*.swift

for file in Macros/*.template
do
  file_name="${file/Macros/}"
  out_loc="Sources/kiwi-ecs/generated${file_name/.template/}"
  SPAWN=$SPAWN QGET=$QGET ruby macro.rb $file $out_loc
done
