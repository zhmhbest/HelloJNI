source ./config.sh

if [ ! -f "$NATIVE_SOURCE/$CLASS_NAME.h" ]; then
    echo "make $CLASS_NAME.h"
    javah -d $NATIVE_SOURCE -classpath $JAVA_SOURCE -jni -encoding "UTF-8" $CLASS_NAME
fi
if [ ! -f "$NATIVE_SOURCE/$CLASS_NAME.c" ]; then
    echo "make $CLASS_NAME.c"
    echo "#include \"$CLASS_NAME.h\"">"$NATIVE_SOURCE/$CLASS_NAME.c"
fi