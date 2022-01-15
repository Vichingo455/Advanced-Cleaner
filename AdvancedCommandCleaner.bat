@echo off
cls
color a
title Advanced Command Cleaner
echo ---------------------------------------
echo Advanced Command Cleaner
echo Before using Advanced Command Cleaner, make sure read ReadMe.txt
systeminfo | findstr /B /C:"OS Name"
echo ---------------------------------------

echo Processing...

:Stage1 - CheckDisk
cls
echo ---------------------------------------
echo Advanced Command Cleaner
echo ---------------------------------------
echo
echo Stage 1 - Checking disk...
echo ---------------------------------------
chkdsk c: /f
echo ---------------------------------------

:Stage2 - RepairDisk
cls
echo ---------------------------------------
echo Advanced Command Cleaner
echo ---------------------------------------
echo
echo Stage 2 - Repairing disk...
echo ---------------------------------------
sfc /scannow
echo ---------------------------------------

:Stage3 - CleanDisk
cls
echo ---------------------------------------
echo Advanced Command Cleaner
echo ---------------------------------------
echo 
echo Stage 3 - Cleaning disk...
echo ---------------------------------------
cleanmgr /d c:
echo ---------------------------------------

:Stage4 - RestartPC
cls
echo ---------------------------------------
echo Advanced Command Cleaner
echo ---------------------------------------
echo
echo Stage 4 - Restarting PC...
echo ---------------------------------------
echo Restarting... 
echo ---------------------------------------
timeout 5 > NUL
wmic os where primary=1 reboot
