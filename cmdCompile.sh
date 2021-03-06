source ./config.sh

if [ ! -d "$OUTPUT_PATH" ]; then
    mkdir "$OUTPUT_PATH"
fi

# Native
cmake --build "$NATIVE_BUILD_PATH" --config Debug --target jni -- -j 4
cp "$NATIVE_BUILD_PATH/lib"* "$OUTPUT_PATH"

# Java
javac -d "$OUTPUT_PATH" "src/java/$CLASS_NAME.java"

# RUN
echo "java -cp \`dirname \$0\` $CLASS_NAME">"$OUTPUT_PATH/run.sh"