@echo off
Rem Open notepad from USB to copy paste the bitlocker key
D:\bitlockers.txt

Rem Prompt to paste bitlocker key
set /p bitlocker=Enter Bitlocker Key:
Rem Unlock bitlocker with the OS drive letter and key
Manage-bde C: -unlock -recoverypassword %bitlocker%
C:
Rem Change directory to path and delete files then verify they are deleted
cd \windows\system32\drivers\crowdstrike
del C-00000291*.sys
Rem yeah this is probably not needed but I like to make sure haha
dir C-00000291*.sys
pause
exit
