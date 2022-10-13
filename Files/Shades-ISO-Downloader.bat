@echo off >nul
mode con cols=170 lines=45
cls
chcp 437>nul
chcp 65001 >nul
color 17
color 0f
:edition
title Shades Windows ISO Downloader
echo   -------------------------------------------------------------------------------------------------------
echo   NOTE: After the download is finished, the file will be saved in the ISO-FOLDER folder in Local Disk C.
echo   -------------------------------------------------------------------------------------------------------
echo.
echo  1.Windows 11 [22H2] [22621.525]                                         
echo  2.Windows 11 [22H2] [22621.382]                                         
echo  3.Windows 11 [21H2] [22000.318]                                         
echo  4.Windows 11 [21H2] [22000.194]                                         
echo  5.Windows 10 22H2 (build 19045.XXXX) (x64)                              
echo  6.Windows 10 22H2 (build 19045.XXXX) (x86)                              
echo  7.Windows 10 21H2 (build 19044.1288)(x64)                               
echo  8.Windows 10 21H2 (build 19044.1288)(x86)                               
echo  9.Windows 10 21H1 (build 19043.928)(x64)                                
echo  10.Windows 10 21H1 (build 19043.928)(x86)                               
echo  11.Windows 10 2009 - 20H2 (build 19042.631)(x64)                        
echo  12.Windows 10 2009 - 20H2 (build 19042.631)(x86)                        
echo  13.Windows 10 2009 - 20H2 (build 19042.508)(x64)                        
echo  14.Windows 10 2009 - 20H2 (build 19042.508)(x86)                        
echo  15.Windows 10 2004 - 20H1 (build 19041.264)(x86)                        
echo  16.Windows 10 2004 - 20H1 (build 19041.264)(x64)                        
echo  17.Windows 10 1909 - 19H2 (build 18363.418)(x86)                        
echo  18.Windows 10 1909 - 19H2 (build 18363.418)(x64)                        
echo  19.Windows 10 1903 - 19H1 (build 18362.356)(x86)                        
echo  20.Windows 10 1903 - 19H1 (build 18362.356)(x64)                        
echo  21.Windows 10 1903 - 19H1 (build 18362.30)(x86)                         
echo  22.Windows 10 1903 - 19H1 (build 18362.30)(x64)                         
echo  23.Windows 10 1809 - Redstone 5 [Sept 2018] (build 17763.1)(x86)        
echo  24.Windows 10 1809 - Redstone 5 [Sept 2018] (build 17763.1)(x64)        
echo  25.Windows 10 1809 - Redstone 5 [Oct 2018] (build 17763.107)(x86)       
echo  26.Windows 10 1809 - Redstone 5 [Oct 2018] (build 17763.107)(x64)       
echo  27.Windows 10 1809 - Redstone 5 [March 2019] (build 17763.379)(x86)     
echo  28.Windows 10 1809 - Redstone 5 [March 2019] (build 17763.379)(x64)     
echo.
set /P c= Version Select : 
echo.

if /I "%c%" EQU "1" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=3a6db98a")
if /I "%c%" EQU "2" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=8283125c")
if /I "%c%" EQU "3" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=55a5f243")
if /I "%c%" EQU "4" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=3f1c444c")
if /I "%c%" EQU "5" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=616522ae")
if /I "%c%" EQU "6" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=b2f4376f")
if /I "%c%" EQU "7" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=35782c91")
if /I "%c%" EQU "8" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=15949c3e")
if /I "%c%" EQU "9" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=8c764d2e")
if /I "%c%" EQU "10" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=d61c63b5")
if /I "%c%" EQU "11" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=3dd1ce66")
if /I "%c%" EQU "12" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=7e583fea")
if /I "%c%" EQU "13" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=73ffea7e")
if /I "%c%" EQU "14" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=b2e49665")
if /I "%c%" EQU "15" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=a621ee85")
if /I "%c%" EQU "16" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=272d35a7")
if /I "%c%" EQU "17" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=9e4157f9")
if /I "%c%" EQU "18" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=1211334a")
if /I "%c%" EQU "19" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=b648eb36")
if /I "%c%" EQU "20" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=d5f2775e")
if /I "%c%" EQU "21" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=f33a92d3")
if /I "%c%" EQU "22" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=cba31cfe")
if /I "%c%" EQU "23" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=3dfcf438")
if /I "%c%" EQU "24" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=a1dfdc28")
if /I "%c%" EQU "25" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=5fd3e266")
if /I "%c%" EQU "26" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=aefedb54")
if /I "%c%" EQU "27" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=226faa91")
if /I "%c%" EQU "28" (call :Download-ISO "https://tb.rg-adguard.net/dl.php?go=37edc5ff")
goto edition

:Download-ISO
echo -------------------------------------------------------------------------------------------------------
echo NOTE: After the download is finished, the file will be saved in the ISO-FOLDER folder in Local Disk C.
echo -------------------------------------------------------------------------------------------------------
aria2c.exe -d, --dir=C:\ISO-FOLDER\ %~1
echo -------------------------------------------------------------------------------------------------------
echo SUCCES: Check ISO ( C:\ISO-FOLDER )
echo -------------------------------------------------------------------------------------------------------
pause
goto done