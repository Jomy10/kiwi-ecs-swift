SPAWN=${SPAWN:-25}
QGET=${QGET:-25}

rm Sources/Kiwi/generated/*.swift

for file in Macros/*.template
do
  file_name="${file/Macros/}"
  out_loc="Sources/Kiwi/generated${file_name/.template/}"
  SPAWN=$SPAWN QGET=$QGET ruby macro.rb $file $out_loc
done
