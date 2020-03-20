# this one is important
SET(CMAKE_SYSTEM_NAME Windows)

# specify the cross compiler
FILE(TO_CMAKE_PATH "$ENV{SQUISHCOCO}/visualstudio_x64" SQUISHCOCO)
SET(CMAKE_C_COMPILER ${SQUISHCOCO}/cl.exe
    CACHE FILEPATH "CoverageScanner wrapper" FORCE)
SET(CMAKE_CXX_COMPILER ${SQUISHCOCO}/cl.exe
    CACHE FILEPATH "CoverageScanner wrapper" FORCE)
SET(CMAKE_LINKER ${SQUISHCOCO}/link.exe
    CACHE FILEPATH "CoverageScanner wrapper" FORCE)