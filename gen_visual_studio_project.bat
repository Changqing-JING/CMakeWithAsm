set buildPath=build_vs
if not exist %buildPath% mkdir %buildPath%
cd %buildPath%
cmake -DCMAKE_BUILD_TYPE=DEBUG -DCMAKE_GENERATOR_PLATFORM=x64 -G "Visual Studio 16 2019"   -T clangcl ..
cd ..