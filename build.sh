source "env.sh"

cmake \
   -DCMAKE_BUILD_TYPE="RelWithDebInfo" \
   -DCMAKE_TOOLCHAIN_FILE="cl.cmake" \
   -Bbuild \
   -H. \
   -G"NMake Makefiles" 
   
cmake --build "build" --config "RelWithDebInfo"