source ./config.sh

cmake \
    --no-warn-unused-cli \
    -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE \
    -DCMAKE_BUILD_TYPE:STRING=Debug \
    -DCMAKE_C_COMPILER:FILEPATH=$CMAKE_C \
    -DCMAKE_CXX_COMPILER:FILEPATH=$CMAKE_CXX \
    -S "$NATIVE_SOURCE" \
    -B "$NATIVE_BUILD_PATH" \
    -G "MinGW Makefiles"
