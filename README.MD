> [!TIP]
> This was last updated 26th April 2025.

> [!WARNING]
> Depricated upload, this is not being maintained.

# Installation and build
Download the repository from github or using git clone. To compile you will need the following pre-requsits:
- NASM (Netwide ASseMbler)
- GCC (x64)
- GDB (GNU Project Debugger)

Execute build.bat to build the program and debug test.asm.
Else compile .asm to a .obj using NASM targetting x64. Compile the .obj in to a Portable Executable. Then GDB to debug the executable.