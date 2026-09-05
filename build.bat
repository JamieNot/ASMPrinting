REM COMPILE TO OBJECT
nasm test.asm -fwin64 -o test.obj
REM COMPILE TO PORTABLE EXECUTABLE
"C:\Users\JN\Downloads\gcc-16.2.0-gdb-17.2.90.20260510-binutils-2.46.1-mingw-w64-v14.0.0-ucrt\bin\gcc.exe" test.obj -o test.exe -g
REM DEBUG PROGRAM
start cmd /k "gdb test.exe -tui -x style.gdb && exit"