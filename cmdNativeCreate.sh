SOURCE_PATH="src/java"
OUTPUT_PATH="src/native"
CLASS_NAME="HelloJNI"

if [ ! -f "$OUTPUT_PATH/$CLASS_NAME.h" ]; then
    echo "make $CLASS_NAME.h"
    javah -d $OUTPUT_PATH -classpath $SOURCE_PATH -jni -encoding "UTF-8" $CLASS_NAME
fi
if [ ! -f "$OUTPUT_PATH/$CLASS_NAME.c" ]; then
    echo "make $CLASS_NAME.c"
    echo "#include \"$CLASS_NAME.h\"">"$OUTPUT_PATH/$CLASS_NAME.c"
fi