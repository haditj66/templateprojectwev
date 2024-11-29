call c:\opt\ros\foxy\x64\setup.bat 
call GetVSEnironmentVariables.bat
set "var=%cd%"
cd ../QR_Core
call oursource.bat
cd %var%/rosqt/IF
call ourcolcon.bat
call oursource.bat
pause
cd ../..
call ourcolcon.bat
call oursource.bat
pause
cd rosqt
call ourcolcon.bat
call oursource.bat
pause