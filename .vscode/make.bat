@ECHO OFF
echo Building ROM...
C:\\cygwin64\\bin\\bash.exe --login -c "cd '/cygdrive/C/Repos/oos-disassembly'; make clean; make; if [ $? -eq 0 ]; then echo 'ROM successfully built!'; fi"
