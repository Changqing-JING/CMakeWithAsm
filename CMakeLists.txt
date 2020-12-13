cmake_minimum_required(VERSION 3.5)

project(CMakeWithASM C CXX ASM)
set(sourceFolder src)
set(CSource ${sourceFolder}/main.c)

if (WIN32)
    enable_language(ASM_MASM)
    set(ASMSource ${sourceFolder}/fx_windows.asm)
else()
    #enable_language(ASM-ATT)   
    set(ASMSource ${sourceFolder}/fx_linux.asm)
endif(WIN32)

add_executable(${PROJECT_NAME} ${CSource} ${ASMSource})