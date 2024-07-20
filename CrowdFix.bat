@echo off
REM To save your fingers create a .txt file in the root of your USB named "Bitlockers.txt" then copy the bitlocker keys to that file to copy/paste in the script. Else you can remove that bit. (Line 13)
REM Change [OS name] to the name of the OS disk
set OS=[OS name]
REM Change [USB name] to the name of the USB drive
set lookfor=[USB name]

Rem Search for USB and OS drive letters and set them in vars
for /f %%a in ('wmic logicaldisk where "VolumeName='%OS%'" get Caption ^| find ":"') do set OSLetter=%%a
for /f %%a in ('wmic logicaldisk where "VolumeName='%lookfor%'" get Caption ^| find ":"') do set USBletter=%%a

Rem Open notepad from USB to copy paste the bitlocker key
Start "" /B notepad.exe %USBletter%\bitlockers.txt
Rem Prompt to paste bitlocker key
set /p bitlocker=Enter Bitlocker Key:
Rem Unlock bitlocker with the OS drive letter and key
Manage-bde %OSLetter% -unlock -recoverypassword %bitlocker%
%OSLetter%
Rem Change directory to path and delete files then verify they are deleted
cd \windows\system32\drivers\crowdstrike
del C-00000291*.sys
Rem yeah this is probably not needed but I like to make sure haha
dir C-00000291*.sys
pause
exit
