echo on

C:\ghdl\ghdl\bin\ghdl.exe --clean
C:\ghdl\ghdl\bin\ghdl.exe --remove

C:\ghdl\ghdl\bin\ghdl.exe -a Eq11-ROM.vhd
C:\ghdl\ghdl\bin\ghdl.exe -e rom

C:\ghdl\ghdl\bin\ghdl.exe -a Eq11-PC.vhd
C:\ghdl\ghdl\bin\ghdl.exe -e pc

C:\ghdl\ghdl\bin\ghdl.exe -a Eq11-ROM-PC-UC.vhd
C:\ghdl\ghdl\bin\ghdl.exe -e rom_uc

C:\ghdl\ghdl\bin\ghdl.exe -r rom_uc --wave=Eq11-ROM-PC-UC.ghw --stop-time=3000ns

start cmd /c C:\ghdl\ghdl\gtkwave -f Eq11-ROM-PC-UC.ghw -a Eq11-ROM-PC-UC.gtkw