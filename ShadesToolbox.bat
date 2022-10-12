echo off
cls
set version=2.1
title Shades Toolbox - %version% 
chcp 65001 > NUL
::Renklendirme komutu
setlocal
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set R=%%b)

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
SET webhook=

cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a

set NSudo="%Location%\Files\NSudo.exe" -U:T -P:E -Wait -ShowWindowMode:hide cmd /c

:loading
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                 
echo         %R%[91m        ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
echo                 ██░▄▄▄░██░██░█░▄▄▀██░▄▄▀██░▄▄▄██░▄▄▄░███▄▄░▄▄██░▄▄▄░██░▄▄▄░██░█████░▄▄▀██░▄▄▄░█▄▀█▀▄
echo                 ██▄▄▄▀▀██░▄▄░█░▀▀░██░██░██░▄▄▄██▄▄▄▀▀█████░████░███░██░███░██░█████░▄▄▀██░███░███░██
echo                 ██░▀▀▀░██░██░█░██░██░▀▀░██░▀▀▀██░▀▀▀░█████░████░▀▀▀░██░▀▀▀░██░▀▀░██░▀▀░██░▀▀▀░█▀▄█▄▀
echo                 ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀%R%[0m
echo.
echo                              %R%[36mVersion: %R%[33m%version%   %R%[31mUser %R%[36m%username%  %R%[94mDate %R%[35m%date% %R%[0m                 
echo.
echo                                             %R%[1mPress any key to start...%R%[0m
echo.         
echo.
pause >nul

:menu
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.       %R%[91m                          
echo                 ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
echo                 ██░▄▄▄░██░██░█░▄▄▀██░▄▄▀██░▄▄▄██░▄▄▄░███▄▄░▄▄██░▄▄▄░██░▄▄▄░██░█████░▄▄▀██░▄▄▄░█▄▀█▀▄
echo                 ██▄▄▄▀▀██░▄▄░█░▀▀░██░██░██░▄▄▄██▄▄▄▀▀█████░████░███░██░███░██░█████░▄▄▀██░███░███░██ 
echo                 ██░▀▀▀░██░██░█░██░██░▀▀░██░▀▀▀██░▀▀▀░█████░████░▀▀▀░██░▀▀▀░██░▀▀░██░▀▀░██░▀▀▀░█▀▄█▄▀
echo                 ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀    %R%[0m
echo.
echo                                          %R%[36m[1] Tweaks        %R%[33m[2] Download
echo.     
echo                                                    %R%[31m[X] Exit%R%[0m
echo.                                              
echo.
echo.
set v=Hata%random%
set /p v=" Choose an option » "
if %v%==1 goto TweaksMenu
if %v%==2 goto Downloader
if %v%==X goto Finish
if %v%==x goto Finish
goto Menu

:Downloader
mode con cols=200 lines=200
echo.
echo.
echo.                 %R%[91m 
echo                                       ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
echo                                       ██░▄▄▄░██░██░█░▄▄▀██░▄▄▀██░▄▄▄██░▄▄▄░███▄▄░▄▄██░▄▄▄░██░▄▄▄░██░█████░▄▄▀██░▄▄▄░█▄▀█▀▄
echo                                       ██▄▄▄▀▀██░▄▄░█░▀▀░██░██░██░▄▄▄██▄▄▄▀▀█████░████░███░██░███░██░█████░▄▄▀██░███░███░██ 
echo                                       ██░▀▀▀░██░██░█░██░██░▀▀░██░▀▀▀██░▀▀▀░█████░████░▀▀▀░██░▀▀▀░██░▀▀░██░▀▀░██░▀▀▀░█▀▄█▄▀
echo                                       ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀  %R%[0m                                                                                                                              %R%[0m   
echo                                                    %R%[36mVersion: %R%[33m%version%   %R%[31mUser %R%[36m%username%  %R%[94mDate %R%[35m%date% %R%[0m                                          
echo.
echo  %R%[91m    [Browsers]          [Runtimes]                     [Document]            [VPN]  %R%[0m 
echo      1 Chrome            16 Java 8                      31 FoxitReader        46 OpenVPN
echo      2  Opera            17 .Net Framework 4.8          32 LibreOffice        47 MullvadVPN
echo      3  Firefox          18 DirectX Runtime             33 SumatraPDF         48 ExpressVPN
echo      4  Brave            19 Java SE 18                  34 OpenOffice         49 NordVPN
echo      5  Tor Browser      20 Visual C++ AIO 2015-2022    35 CutePDFWriter      50 MozillaVPN
echo.                                                                                                        
echo  %R%[36m     [Messaging]         [Imaging]                      [Archive]            [Download Manager]  %R%[0m 
echo      6  Zoom             21 GIMP                        36 WinRAR             51 IDM
echo      7  Discord          22 IrfanView8                  37 7zip               52 XDM
echo      8  Skype            23 ShareX                      38 IZArc              53 JDownloader
echo      9  WhatsApp         24 MyPaint                     39 Peazip             54 FreeDownloadManager
echo      10 Telegram         25 Blender                     40 Bandizip           55 NeatDownloadManage
echo.
echo  %R%[33m    [Video / Sound]     [Anivirus]                     [Other]               [Torrent]  %R%[0m 
echo      11 Vlc              26  Malwarebytes               41 Evernote           56 qBittorrent 
echo      12 Winamp           27  EsetNod32                  42 Google Earth Pro   57 PicoTorrent 
echo      13 Gom Player       28  IObit Malware Fighter      43 Steam              58 Deluge Torrent
echo      14 Handbrake        29  SUPERAntiSpyware           44 OneDrive           59 BiglyB
echo      15 Spotify          30  Webroot                    45 Notepad++          60 Electorrent
echo      ╔════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo      ║                [M] Menu                                             [F] Exit                       ║
echo      ╚════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set menu=xy 
set /p menu=" Choose an option » "
if %menu% EQU 1 (Call :Winget "Google.Chrome")
if %menu% EQU 2 (Call :Winget "Opera.Opera")
if %menu% EQU 3 (Call :Winget "Mozilla.Firefox")
if %menu% EQU 4 (Call :Winget "BraveSoftware.BraveBrowser")
if %menu% EQU 5 (Call :Winget "TorProject.TorBrowser")
if %menu% EQU 6 (Call :Winget "Zoom.Zoom")
if %menu% EQU 7 (Call :Winget "Discord.Discord")
if %menu% EQU 8 (Call :Winget "Microsoft.Skype")
if %menu% EQU 9 (Call :Winget "WhatsApp.WhatsApp")
if %menu% EQU 10 (Call :Winget "Telegram.TelegramDesktop")
if %menu% EQU 11 (Call :Winget "VideoLAN.VLC")
if %menu% EQU 12 (Call :Winget "Radionomy.Winamp")
if %menu% EQU 13 (Call :Winget "GOMLab.GOMPlayer")
if %menu% EQU 14 (Call :Winget "HandBrake.HandBrake")
if %menu% EQU 15 (Call :Winget "Spotify.Spotify")
if %menu% EQU 16 (Call :Winget "Oracle.JavaRuntimeEnvironment")
if %menu% EQU 17 (Call :Winget "Microsoft.dotNetFramework")
if %menu% EQU 18 (Call :Winget "Microsoft.DirectX")
if %menu% EQU 19 (Call :Winget "Oracle.JDK.18")
if %menu% EQU 20 (Call :Winget "Microsoft.VC++2015-2022Redist-x64")
if %menu% EQU 21 (Call :Winget "GIMP.GIMP")
if %menu% EQU 22 (Call :Winget "IrfanSkiljan.IrfanView")
if %menu% EQU 23 (Call :Winget "ShareX.ShareX")
if %menu% EQU 24 (Call :Winget "MyPaint.MyPaint")
if %menu% EQU 25 (Call :Winget "BlenderFoundation.Blender")
if %menu% EQU 26 (Call :Winget "Malwarebytes.Malwarebytes")
if %menu% EQU 27 (Call :Winget "ESET.Nod32")
if %menu% EQU 28 (Call :Winget "IObit.MalwareFighter")
if %menu% EQU 29 (Call :Winget "SUPERAntiSpyware.SUPERAntiSpyware")
if %menu% EQU 30 (Call :Winget "Webroot.SecureAnywhere")
if %menu% EQU 31 (Call :Winget "Foxit.FoxitReader")
if %menu% EQU 32 (Call :Winget "TheDocumentFoundation.LibreOffice")
if %menu% EQU 33 (Call :Winget "SumatraPDF.SumatraPDF")
if %menu% EQU 34 (Call :Winget "Apache.OpenOffice")
if %menu% EQU 35 (Call :Winget "AcroSoftware.CutePDFWriter")
if %menu% EQU 36 (Call :Winget "RARLab.WinRAR")
if %menu% EQU 37 (Call :Winget "mcmilk.7zip-zstd")
if %menu% EQU 38 (Call :Winget "IZArc.IZArc")
if %menu% EQU 39 (Call :Winget "Giorgiotani.Peazip")
if %menu% EQU 40 (Call :Winget "Bandisoft.Bandizip")
if %menu% EQU 41 (Call :Winget "evernote.evernote")
if %menu% EQU 42 (Call :Winget "Google.EarthPro")
if %menu% EQU 43 (Call :Winget "Valve.Steam")
if %menu% EQU 44 (Call :Winget "Microsoft.OneDrive")
if %menu% EQU 45 (Call :Winget "Notepad++.Notepad++")
if %menu% EQU 46 (Call :Winget "OpenVPNTechnologies.OpenVPNConnect")
if %menu% EQU 47 (Call :Winget "MullvadVPN.MullvadVPN")
if %menu% EQU 48 (Call :Winget "ExpressVPN.ExpressVPN")
if %menu% EQU 49 (Call :Winget "NordVPN.NordVPN")
if %menu% EQU 50 (Call :Winget "Mozilla.VPN")
if %menu% EQU 51 (Call :Winget "Tonec.InternetDownloadManager")
if %menu% EQU 52 (Call :Winget "subhra74.XtremeDownloadManager")
if %menu% EQU 53 (Call :Winget "AppWork.JDownloader")
if %menu% EQU 54 (Call :Winget "SoftDeluxe.FreeDownloadManager")
if %menu% EQU 55 (Call :Winget "JavadMotallebi.NeatDownloadManager")
if %menu% EQU 56 (Call :Winget "qBittorrent.qBittorrent")
if %menu% EQU 57 (Call :Winget "PicoTorrent.PicoTorrent")
if %menu% EQU 58 (Call :Winget "DelugeTeam.Deluge")
if %menu% EQU 59 (Call :Winget "BiglySoftware.BiglyBT")
if %menu% EQU 60 (Call :Winget "Tympanix.Electorrent")
if %menu% EQU M goto menu
if %menu% EQU m goto menu
if %menu% EQU F goto Finish
if %menu% EQU f goto Finish
goto Downloader

:Winget
winget install -e --id %~1
goto :Eof

:TweaksMenu
mode con cols=170 lines=45
cls
chcp 437>nul
chcp 65001 >nul
echo.
echo.
echo.
echo.
echo.
echo.
echo                       ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
echo                       ██░▄▄▄░██░██░█░▄▄▀██░▄▄▀██░▄▄▄██░▄▄▄░███▄▄░▄▄██░▄▄▄░██░▄▄▄░██░█████░▄▄▀██░▄▄▄░█▄▀█▀▄
echo                       ██▄▄▄▀▀██░▄▄░█░▀▀░██░██░██░▄▄▄██▄▄▄▀▀█████░████░███░██░███░██░█████░▄▄▀██░███░███░██ 
echo                       ██░▀▀▀░██░██░█░██░██░▀▀░██░▀▀▀██░▀▀▀░█████░████░▀▀▀░██░▀▀▀░██░▀▀░██░▀▀░██░▀▀▀░█▀▄█▄▀
echo                       ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
echo                                      %R%[32mVersion: %version% %R%[0m  %R%[94mUser%R%[0m %username%  %R%[94mDate%R%[0m %date%   
echo                 ╔═════════════════════════════════════════╦═══╦══════════════════════════════════════════════╗
echo                 ╠═════════════ Windows Cleaning ══════════║═══║═════════════════ Bloatware ══════════════════╣
echo                 ╠═══╦═════════════════════════════════════╠═══╣══════════════════════════════════════════════╣
echo                 ║ 1 ║ Remove logs and Caches              ║ 18║ Uninstall provisioned Windows apps           ║
echo                 ║ 2 ║ Full Debloat                        ║ 19║ Uninstall installed Windows apps             ║
echo                 ║ 3 ║ Remove OneDrive                     ║ 20║ Unninstall System Apps                       ║
echo                 ║ 4 ║ Remove Microsoft Edge               ║ 21║ Clear previous Windows installations         ║
echo                 ║ 5 ║ Remove Taskbar MeetNow Logo         ║ 22║ Disable Windows Features                     ║
echo                 ╠═══╩═════════════════════════════════════╠═══╣══════════════════════════════════════════════╣
echo                 ║══════════════ Windows Tweaks ═══════════║═══║══════════════════ Other ═════════════════════║
echo                 ╠═══╦═════════════════════════════════════╠═══╣══════════════════════════════════════════════╣
echo                 ║ 6 ║ Disable Windows Defender            ║ 23║ Enable Old Volume Bar                        ║
echo                 ║ 7 ║ Stop Windows Updates until 2099     ║ 24║ Enable Legacy Boot Menu                      ║
echo                 ║ 8 ║ Enable Old Photo Viewer             ║ 25║ Run CompactOS                                ║
echo                 ║ 9 ║ Disable Windows Driver Updates      ║ 26║ Add Context Menu Take Ownership              ║
echo                 ║ 10║ Ram Optimization                    ║ 27║ Shades Windows Activator                     ║
echo                 ║ 11║ Network Optimization                ║ 28║ Paging File (Virtual Memory)                 ║
echo                 ║ 12║ CPU Optimization                    ║ 29║ Windows Version Switcher                     ║
echo                 ║ 13║ Mouse/Keyboard Optimization         ║ 30║ Enable Old Alt+Tab Menu                      ║
echo                 ╠═══╩═════════════════════════════════════╠═══╣══════════════════════════════════════════════╣
echo                 ║══════════════════ Other ════════════════║═══║════════════ Windows 11 Tweaks ═══════════════║
echo                 ╠═══╦═════════════════════════════════════╠═══╣══════════════════════════════════════════════╣
echo                 ║ 14║ Disable SmartScreen                 ║ 31║ Disable Widgets                              ║
echo                 ║ 15║ Run Disk Defrag                     ║ 32║ Enable Old Context Menu                      ║
echo                 ║ 16║ Disable Windows Update              ║ 33║ Disable Background Apps                      ║
echo                 ║ 17║ Disable Telemetry Services          ║ 34║ File Explorer Classic Ribbon                 ║
echo                 ╠═══╩═════════════════════════════════════╠═══╣══════════════════════════════════════════════╣
echo                 ║══════════════════ Other ════════════════║═══║════════════════════ Soon ════════════════════║
echo                 ╠═══╦═════════════════════════════════════╠═══╣══════════════════════════════════════════════╣
echo                 ║ 35║ 8.1 Style Wifi Menu(Only Win10)     ║ 39║ Soon                                         ║
echo                 ║ 36║ Add Personalize (Old) ContextMenu   ║ 40║ Soon                                         ║
echo                 ║ 37║ NetFramework 3.5 Online Install     ║ 41║ Soon                                         ║
echo                 ║ 38║ Soon                                ║ 42║ Soon                                         ║
echo                 ╚═══╩═════════════════════════════════════╩═══╩══════════════════════════════════════════════╝
echo                 ╔════════════════════════════════════════════════════════════════════════════════════════════╗
echo                 ║                 [M] Menu                                [F] Exit                           ║
echo                 ╚════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p M=" Choose an option » "
if %M%==1 goto A
if %M%==2 goto B
if %M%==3 goto C
if %M%==4 goto D
if %M%==5 goto E
if %M%==6 goto F
if %M%==7 goto G
if %M%==8 goto OldPhotoViewer
if %M%==9 goto I
if %M%==10 goto J
if %M%==11 goto K
if %M%==12 goto CO
if %M%==13 goto MKT
if %M%==14 goto SmartScreen
if %M%==15 goto Defrag
if %M%==16 goto DisableWindowsUpdates
if %M%==17 goto DisableTelemetry
if %M%==18 goto UninstallprovisionedWindowsapps
if %M%==19 goto UninstallinstalledWindowsapps
if %M%==20 goto UnninstallSystemApps
if %M%==21 goto ClearpreviousWindowsinstallations
if %M%==22 goto DisableWindowsFeatures
if %M%==23 goto oldvolumebar
if %M%==24 goto legacyboot
if %M%==25 goto compactos
if %M%==26 goto takeownership
if %M%==27 goto activator
if %M%==28 goto pagingfile
if %M%==29 goto WindowsVersionSwither
if %M%==30 goto oldalttab
if %M%==31 goto disablewidget
if %M%==32 goto oldcontext
if %M%==33 goto DisableBackgroundApps
if %M%==34 goto FileExplorerClassicRibbon
if %M%==35 goto 8.1StyleWifiMenu
if %M%==36 goto oldPersonalize
if %M%==37 goto netframework3.5
if %M%==M goto menu
if %M%==m goto menu
if %M%==L goto Finish
if %M%==l goto Finish
pause >nul
goto TweaksMenu

:netframework3.5
Title Shades-Toolbox .NET Framework 3.5 Offline Installer
DISM /Online /Enable-Feature /FeatureName:NetFx3 /All
timeout /t 2 >nul
goto TweaksMenu

:oldPersonalize
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization" /v "Icon" /t REG_SZ /d "themecpl.dll" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization" /v "MUIVerb" /t REG_SZ /d "Personalize (classic)" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization" /v "Position" /t REG_SZ /d "Bottom" /f
Reg.exe delete "HKCR\DesktopBackground\Shell\Personalization" /v "Extended" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization" /v "SubCommands" /t REG_SZ /d "" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\001flyout" /v "MUIVerb" /t REG_SZ /d "Theme Settings" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\001flyout" /v "ControlPanelName" /t REG_SZ /d "Microsoft.Personalization" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\001flyout" /v "Icon" /t REG_SZ /d "themecpl.dll" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\001flyout\command" /ve /t REG_SZ /d "explorer shell:::{ED834ED6-4B5A-4bfe-8F11-A626DCB6A921}" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\002flyout" /v "Icon" /t REG_SZ /d "imageres.dll,-110" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\002flyout" /v "MUIVerb" /t REG_SZ /d "Desktop Background" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\002flyout" /v "CommandFlags" /t REG_DWORD /d "32" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\002flyout\command" /ve /t REG_SZ /d "explorer shell:::{ED834ED6-4B5A-4bfe-8F11-A626DCB6A921} -Microsoft.Personalization\pageWallpaper" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\003flyout" /v "Icon" /t REG_SZ /d "themecpl.dll" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\003flyout" /v "MUIVerb" /t REG_SZ /d "Color and Appearance" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\003flyout\command" /ve /t REG_SZ /d "explorer shell:::{ED834ED6-4B5A-4bfe-8F11-A626DCB6A921} -Microsoft.Personalization\pageColorization" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\004flyout" /v "Icon" /t REG_SZ /d "SndVol.exe,-101" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\004flyout" /v "MUIVerb" /t REG_SZ /d "Sounds" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\004flyout\command" /ve /t REG_SZ /d "rundll32.exe shell32.dll,Control_RunDLL mmsys.cpl,,2" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\005flyout" /v "Icon" /t REG_SZ /d "PhotoScreensaver.scr" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\005flyout" /v "MUIVerb" /t REG_SZ /d "Screen Saver Settings" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\005flyout\command" /ve /t REG_SZ /d "rundll32.exe shell32.dll,Control_RunDLL desk.cpl,,1" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\006flyout" /v "Icon" /t REG_SZ /d "desk.cpl" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\006flyout" /v "MUIVerb" /t REG_SZ /d "Desktop Icon Settings" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\006flyout" /v "CommandFlags" /t REG_DWORD /d "32" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\006flyout\command" /ve /t REG_SZ /d "rundll32.exe shell32.dll,Control_RunDLL desk.cpl,,0" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\007flyout" /v "Icon" /t REG_SZ /d "main.cpl" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\007flyout" /v "MUIVerb" /t REG_SZ /d "Mouse Pointers" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\007flyout\command" /ve /t REG_SZ /d "rundll32.exe shell32.dll,Control_RunDLL main.cpl,,1" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\008flyout" /v "Icon" /t REG_SZ /d "taskbarcpl.dll,-1" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\008flyout" /v "MUIVerb" /t REG_SZ /d "Notification Area Icons" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\008flyout" /v "CommandFlags" /t REG_DWORD /d "32" /f
Reg.exe add "HKCR\DesktopBackground\Shell\Personalization\shell\008flyout\command" /ve /t REG_SZ /d "explorer shell:::{05d7b0f4-2121-4eff-bf6b-ed3f69b894d9}" /f
echo Explorer.exe Resarting.. Please Wait..
timeout /t 2 >nul
echo Succesfully..
timeout /t 2 >nul
taskkill /im explorer.exe /f
start explorer
goto TweaksMenu

:8.1StyleWifiMenu
chcp 437 > NUL 2>&1
chcp 65001 >nul
%NSudo% reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Control Panel\Settings\Network" /v "ReplaceVan" /t REG_DWORD /d 2 /f
echo Succesfully..
timeout /t 2 >nul
goto TweaksMenu


:FileExplorerClassicRibbon
chcp 437 > NUL 2>&1
chcp 65001 >nul
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{e2bf9676-5f8f-435c-97eb-11607a5bedf7}" /t REG_SZ /d "" /f
echo Succesfully..
timeout /t 2 >nul
taskkill /im explorer.exe /f
start explorer
goto TweaksMenu

:oldcontext
chcp 437 > NUL 2>&1
chcp 65001 >nul
Reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /ve /t REG_SZ /d "" /f
Reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /ve /t REG_SZ /d "" /f
echo Succesfully..
timeout /t 2 >nul
taskkill /im explorer.exe /f
start explorer
goto TweaksMenu

:disablewidget
chcp 437 > NUL 2>&1
chcp 65001 >nul
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /v "AllowNewsAndInterests" /t REG_DWORD /d "0" /f
echo Succesfully..
taskkill /im explorer.exe /f
start explorer
timeout /t 2 >nul
goto TweaksMenu

:oldalttab
chcp 437 > NUL 2>&1
chcp 65001 >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "AltTabSettings" /t REG_DWORD /d  1 /f
echo Succesfully..
timeout /t 2 >nul
taskkill /im explorer.exe /f
start explorer
goto TweaksMenu

:G
chcp 437 > NUL 2>&1
chcp 65001 >nul
Reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseUpdatesExpiryTime" /t REG_SZ /d "2099-12-29T23:59Z" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseFeatureUpdatesEndTime" /t REG_SZ /d "2099-12-29T23:59Z" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseQualityUpdatesEndTime" /t REG_SZ /d "2099-12-29T23:59Z" /f
echo Succesfully..
timeout /t 2 >nul
goto TweaksMenu

:WindowsVersionSwither
chcp 437 > NUL 2>&1
chcp 65001 >nul
@echo off 
:start
cls
echo  *****************************************
echo  * Shades Windows 10/11 Version Switcher *
echo  *****************************************
echo  1. Windows 10/11 Pro
echo  2. Windows 10/11 Pro VL
echo  3. Windows 10/11 Education VL
echo  4. Windows 10/11 Enterprise VL
echo  5. Windows 10/11 Home
echo  6. Exit
echo.

set choice=
set /p choice= Select Version: 

if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto to_pro
if '%choice%'=='2' goto to_pro_vl
if '%choice%'=='3' goto to_edu_vl
if '%choice%'=='4' goto to_ent_vl
if '%choice%'=='5' goto end
goto start

:to_pro
changepk /ProductKey VK7JG-NPHTM-C97JM-9MPGT-3V66T
goto finish
:to_pro_vl
changepk /ProductKey W269N-WFGWX-YVC9B-4J6C9-T83GX
goto finish
:to_edu_vl
changepk /ProductKey NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
goto finish
:to_ent_vl
changepk /ProductKey NPPR9-FWDCX-D2C8J-H872K-2YT43
goto finish
:finish
echo Switched Successfully..
timeout /t 2 >nul
goto TweaksMenu
:end
goto TweaksMenu

:pagingfile
cls
echo  ---------------------------------------------------------------------------------------------------------------------
echo   Paging file (virtual memory)                             
echo  ---------------------------------------------------------------------------------------------------------------------
echo   [1] Disable : Pagefile.sys                               
echo   [2] Enable  : Pagefile.sys [set to 256MB]                
echo   [3] Enable  : Pagefile.sys [set to 3.0GB]                
echo   [4] Enable  : Pagefile.sys [set to 4.0GB]                
echo   [5] Enable  : Pagefile.sys [set to 8.0GB]                
echo   [6] Enable  : Pagefile.sys [set to 16.0GB]               
echo   [7] Enable  : Pagefile.sys [Default System managed]      
echo ---------------------------------------------------------------------------------------------------------------------
echo   [0] Back to menu                                  
echo ---------------------------------------------------------------------------------------------------------------------
echo ---------------------------------------------------------------------------------------------------------------------
echo   NOTE: Default System managed ex. 4GB of ram Pagefile.sys be using 4GB of size on your drives.
echo ---------------------------------------------------------------------------------------------------------------------
set /p op= Type option:
if "%op%"=="1" goto m1
if "%op%"=="2" goto m2
if "%op%"=="3" goto m3
if "%op%"=="4" goto m4
if "%op%"=="5" goto m5
if "%op%"=="6" goto m6
if "%op%"=="7" goto m7
if "%op%"=="0" goto TweaksMenu
echo This function not available yet!
echo Succesfully!
timeout /t 3 >nul
goto TweaksMenu

:m1
REG add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t REG_MULTI_SZ /d "C:\pagefile.sys 1 1" /f
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d 0 /f
wmic pagefileset where name="C:\\pagefile.sys" delete
echo Restart the computer for the changes to take effect.
timeout /t 3 >nul
call TweaksMenu
:m2
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d 0 /f
REG add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t REG_MULTI_SZ /d "C:\pagefile.sys 256 256" /f
echo Restart the computer for the changes to take effect.
echo Succesfully!
timeout /t 3 >nul
goto TweaksMenu
:m3
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d 0 /f
REG add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t REG_MULTI_SZ /d "C:\pagefile.sys 3000 3000" /f
echo Restart the computer for the changes to take effect.
echo Succesfully!
timeout /t 3 >nul
goto TweaksMenu
:m4
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d 0 /f
REG add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t REG_MULTI_SZ /d "C:\pagefile.sys 4000 4000" /f
echo Restart the computer for the changes to take effect.
echo Succesfully!
timeout /t 3 >nul
goto TweaksMenu
:m5
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d 0 /f
REG add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t REG_MULTI_SZ /d "C:\pagefile.sys 8000 8000" /f
echo Restart the computer for the changes to take effect.
echo Succesfully!
timeout /t 3 >nul
goto TweaksMenu
:m6
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d 0 /f
REG add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t REG_MULTI_SZ /d "C:\pagefile.sys 16000 16000" /f
echo Restart the computer for the changes to take effect.
echo Succesfully!
timeout /t 3 >nul
goto TweaksMenu
:m7
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d 0 /f
REG add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t REG_MULTI_SZ /d "C:\pagefile.sys 0 0" /f
echo Restart the computer for the changes to take effect.
echo Succesfully!
timeout /t 3 >nul
goto TweaksMenu

:activator
chcp 437 > NUL 2>&1
Powershell -command "Start-Process 'C:\Toolbox\Files\activator.cmd'"
chcp 65001 >nul
pause
echo Please Wait..
timeout /t 2 >nulss
goto TweaksMenu


:takeownership
chcp 437 > NUL 2>&1
chcp 65001 >nul
Reg add "HKCR\*\shell\runas" /ve /t REG_SZ /d "Take Ownership" /f
Reg add "HKCR\*\shell\runas" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
Reg add "HKCR\*\shell\runas\command" /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F" /f
Reg add "HKCR\*\shell\runas\command" /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F" /f
Reg add "HKCR\Directory\shell\runas" /ve /t REG_SZ /d "Take Ownership" /f
Reg add "HKCR\Directory\shell\runas" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
Reg add "HKCR\Directory\shell\runas\command" /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t" /f
Reg add "HKCR\Directory\shell\runas\command" /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t" /f
timeout /t 2 >nulss
goto TweaksMenu

:compactos
chcp 437 > NUL 2>&1s
chcp 65001 >nul
compact /compactos:always
timeout /t 2 >nulss
goto TweaksMenu


:legacyboot
chcp 437 > NUL 2>&1
chcp 65001 >nul
bcdedit /set "{current}" bootmenupolicy legacy
timeout /t 2 >nulss
goto TweaksMenu

:oldvolumebar
chcp 437 > NUL 2>&1
chcp 65001 >nul
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\MTCUVC" /v "EnableMtcUvc" /t REG_DWORD /d "0" /f
echo İşlem başarılı..
timeout /t 2 >nul
goto TweaksMenu


:Defrag
chcp 437 > NUL 2>&1
chcp 65001 >nul
echo Bu işlem bilgisayarınızın özelliklerine göre uzun sürebilir...
timeout /t 8 >nul
defrag c: /u /v > %temp%\c.txt 
echo.
pause
goto TweaksMenu

:OldPhotoViewer
chcp 437 >null
chcp 65001 >nul
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".bmp" /t REG_SZ /d "PhotoViewer.FileAssoc.Tiff" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".dib" /t REG_SZ /d "PhotoViewer.FileAssoc.Tiff" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".gif" /t REG_SZ /d "PhotoViewer.FileAssoc.Tiff" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".ico" /t REG_SZ /d "PhotoViewer.FileAssoc.Tiff" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".jfif" /t REG_SZ /d "PhotoViewer.FileAssoc.Tiff" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".jpe" /t REG_SZ /d "PhotoViewer.FileAssoc.Tiff" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".jpeg" /t REG_SZ /d "PhotoViewer.FileAssoc.Tiff" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".jpg" /t REG_SZ /d "PhotoViewer.FileAssoc.Tiff" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".jxr" /t REG_SZ /d "PhotoViewer.FileAssoc.Tiff" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".png" /t REG_SZ /d "PhotoViewer.FileAssoc.Tiff" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".tga" /t REG_SZ /d "PhotoViewer.FileAssoc.Tiff" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".tif" /t REG_SZ /d "PhotoViewer.FileAssoc.Tiff" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".tiff" /t REG_SZ /d "PhotoViewer.FileAssoc.Tiff" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".wdp" /t REG_SZ /d "PhotoViewer.FileAssoc.Wdp" /f
Reg.exe add "HKCR\Applications\photoviewer.dll\shell\open" /v "MuiVerb" /t REG_SZ /d "@photoviewer.dll,-3043" /f
Reg.exe add "HKCR\Applications\photoviewer.dll\shell\open\command" /ve /t REG_EXPAND_SZ /d "%%SystemRoot%%\System32\rundll32.exe \"%%ProgramFiles%%\Windows Photo Viewer\PhotoViewer.dll\", ImageView_Fullscreen %%1" /f
Reg.exe add "HKCR\Applications\photoviewer.dll\shell\open\DropTarget" /v "Clsid" /t REG_SZ /d "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}" /f
Reg.exe add "HKCR\Applications\photoviewer.dll\shell\print\command" /ve /t REG_EXPAND_SZ /d "%%SystemRoot%%\System32\rundll32.exe \"%%ProgramFiles%%\Windows Photo Viewer\PhotoViewer.dll\", ImageView_Fullscreen %%1" /f
Reg.exe add "HKCR\Applications\photoviewer.dll\shell\print\DropTarget" /v "Clsid" /t REG_SZ /d "{60fd46de-f830-4894-a628-6fa81bc0190d}" /f
timeout /t 2 >nulss
goto TweaksMenu

:DisableWindowsFeatures
chcp 437 >null
chcp 65001 >nul
echo %g%_____________________________________________
echo.
echo      Clear previous Windows installations  
echo %g%_____________________________________________
echo --- Direct Play feature
dism /Online /Disable-Feature /FeatureName:"DirectPlay" /NoRestart
echo --- Internet Explorer feature
dism /Online /Disable-Feature /FeatureName:"Internet-Explorer-Optional-x64" /NoRestart
dism /Online /Disable-Feature /FeatureName:"Internet-Explorer-Optional-x84" /NoRestart
dism /Online /Disable-Feature /FeatureName:"Internet-Explorer-Optional-amd64" /NoRestart
echo --- Legacy Components feature
dism /Online /Disable-Feature /FeatureName:"LegacyComponents" /NoRestart
echo --- Media Features feature
dism /Online /Disable-Feature /FeatureName:"MediaPlayback" /NoRestart
echo --- Scan Management feature
dism /Online /Disable-Feature /FeatureName:"ScanManagementConsole" /NoRestart
echo --- Windows Fax and Scan feature
dism /Online /Disable-Feature /FeatureName:"FaxServicesClientPackage" /NoRestart
echo --- Windows Media Player feature
dism /Online /Disable-Feature /FeatureName:"WindowsMediaPlayer" /NoRestart
echo --- Windows Search feature
dism /Online /Disable-Feature /FeatureName:"SearchEngine-Client-Package" /NoRestart
echo --- Telnet Client feature
dism /Online /Disable-Feature /FeatureName:"TelnetClient" /NoRestart
echo --- Net.TCP Port Sharing feature
dism /Online /Disable-Feature /FeatureName:"WCF-TCP-PortSharing45" /NoRestart
echo --- SMB Direct feature
dism /Online /Disable-Feature /FeatureName:"SmbDirect" /NoRestart
echo --- TFTP Client feature
dism /Online /Disable-Feature /FeatureName:"TFTP" /NoRestart
echo --- Hyper-V feature
dism /Online /Disable-Feature /FeatureName:"Microsoft-Hyper-V-All" /NoRestart
echo --- Hyper-V GUI Management Tools feature
dism /Online /Disable-Feature /FeatureName:"Microsoft-Hyper-V-Management-Clients" /NoRestart
echo --- Hyper-V Management Tools feature
dism /Online /Disable-Feature /FeatureName:"Microsoft-Hyper-V-Tools-All" /NoRestart
echo --- Hyper-V Module for Windows PowerShell feature
dism /Online /Disable-Feature /FeatureName:"Microsoft-Hyper-V-Management-PowerShell" /NoRestart
echo --- Print and Document Services feature
dism /Online /Disable-Feature /FeatureName:"Printing-Foundation-Features" /NoRestart
echo --- Work Folders Client feature
dism /Online /Disable-Feature /FeatureName:"WorkFolders-Client" /NoRestart
echo --- Internet Printing Client
dism /Online /Disable-Feature /FeatureName:"Printing-Foundation-InternetPrinting-Client" /NoRestart
echo --- LPD Print Service
dism /Online /Disable-Feature /FeatureName:"LPDPrintService" /NoRestart
echo --- LPR Port Monitor feature
dism /Online /Disable-Feature /FeatureName:"Printing-Foundation-LPRPortMonitor" /NoRestart
echo --- Microsoft Print to PDF feature
dism /Online /Disable-Feature /FeatureName:"Printing-PrintToPDFServices-Features" /NoRestart
echo --- XPS Services feature
dism /Online /Disable-Feature /FeatureName:"Printing-XPSServices-Features" /NoRestart
echo --- XPS Viewer feature
dism /Online /Disable-Feature /FeatureName:"Xps-Foundation-Xps-Viewer" /NoRestart
timeout /t 2 >nulss
goto TweaksMenu

:ClearpreviousWindowsinstallations
chcp 437 >null
chcp 65001 >nul
echo --- Clear previous Windows installations
if exist "%SystemDrive%\Windows.old" (
    takeown /f "%SystemDrive%\Windows.old" /a /r /d y
    icacls "%SystemDrive%\Windows.old" /grant administrators:F /t
    rd /s /q "%SystemDrive%\Windows.old"
    echo Deleted previous installation from "%SystemDrive%\Windows.old\"
)  else (
    echo No previous Windows installation has been found
)
timeout /t 2 >nulss
goto TweaksMenu

:UnninstallSystemApps
echo --- File Picker app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers '1527c705-839a-4832-9118-54d4Bd6a0c89'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- File Explorer app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'c5e2524a-ea46-4f67-841f-6a9465d9d515'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- App Resolver UX app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'E2A4F912-2574-4A75-9BB0-0D023378592B'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Add Suggested Folders To Library app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'InputApp'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Microsoft AAD Broker Plugin app (breaks Night Light settings, taskbar keyboard selection and Office app authentication)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.AAD.BrokerPlugin'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Microsoft Accounts Control app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.AccountsControl'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Microsoft Async Text Service app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.AsyncTextService'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Contact Support app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Windows.ContactSupport'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Windows Print 3D app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Windows.Print3D'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Print UI app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Windows.PrintDialog'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Bio enrollment app (breaks biometric authentication)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.BioEnrollment'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Cred Dialog Host app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.CredDialogHost'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- EC app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.ECApp'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Lock app (shows lock screen)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.LockApp'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Microsoft Edge (Legacy) app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.MicrosoftEdge'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Microsoft Edge (Legacy) Dev Tools Client app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.MicrosoftEdgeDevToolsClient'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Win32 Web View Host app / Desktop App Web Viewer
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Win32WebViewHost'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Microsoft PPI Projection app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.PPIProjection'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- ChxApp app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.Apprep.ChxApp'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Assigned Access Lock App app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.AssignedAccessLockApp'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Capture Picker app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.CapturePicker'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Cloud Experience Host app (breaks Windows Hello password/PIN sign-in options, and Microsoft cloud/corporate sign in)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.CloudExperienceHost'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Content Delivery Manager app (automatically installs apps)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.ContentDeliveryManager'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Search app (breaks Windows search)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.Cortana'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Windows.Search' | Remove-AppxPackage"
echo --- Holographic First Run app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.Holographic.FirstRun'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- OOBE Network Captive Port app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.OOBENetworkCaptivePortal'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- OOBE Network Connection Flow app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.OOBENetworkConnectionFlow'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Windows 10 Family Safety / Parental Controls app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.ParentalControls'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- My People / People Bar App on taskbar (People Experience Host)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.PeopleExperienceHost'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Pinning Confirmation Dialog app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.PinningConfirmationDialog'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Windows Security GUI (Sec Health UI) app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.SecHealthUI'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Secondary Tile Experience app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.SecondaryTileExperience'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Secure Assessment Browser app (breaks Microsoft Intune/Graph)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.SecureAssessmentBrowser'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Windows Feedback app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.WindowsFeedback'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- Xbox Game Callable UI app (breaks Xbox Live games)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.XboxGameCallableUI'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
echo --- CBS Preview app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Windows.CBSPreview'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
timeout /t 2 >nulss
goto TweaksMenuak

:UninstallinstalledWindowsapps
echo %g%_____________________________________________
echo.
echo      Uninstall installed Windows apps  
echo %g%_____________________________________________

echo --- Microsoft Advertising app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Advertising.Xaml' | Remove-AppxPackage"
echo --- Remote Desktop app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.RemoteDesktop' | Remove-AppxPackage"
echo --- Network Speed Test app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.NetworkSpeedTest' | Remove-AppxPackage"
echo --- Microsoft To Do app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Todos' | Remove-AppxPackage"
echo --- Shazam app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'ShazamEntertainmentLtd.Shazam' | Remove-AppxPackage"
echo --- Candy Crush Saga app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'king.com.CandyCrushSaga' | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'king.com.CandyCrushSodaSaga' | Remove-AppxPackage"
echo --- Flipboard app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Flipboard.Flipboard' | Remove-AppxPackage"
echo --- Twitter app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage '9E2F88E3.Twitter' | Remove-AppxPackage"
echo --- iHeartRadio app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'ClearChannelRadioDigital.iHeartRadio' | Remove-AppxPackage"
echo --- Duolingo app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'D5EA27B7.Duolingo-LearnLanguagesforFree' | Remove-AppxPackage"
echo --- Photoshop Express app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'AdobeSystemIncorporated.AdobePhotoshop' | Remove-AppxPackage"
echo --- Pandora app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'PandoraMediaInc.29680B314EFC2' | Remove-AppxPackage"
echo --- Eclipse Manager app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage '46928bounde.EclipseManager' | Remove-AppxPackage"
echo --- Code Writer app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'ActiproSoftwareLLC.562882FEEB491' | Remove-AppxPackage"
echo --- Spotify app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'SpotifyAB.SpotifyMusic' | Remove-AppxPackage"
timeout /t 2 >nulss
goto TweaksMenu


:UninstallprovisionedWindowsapps
chcp 437 >null
chcp 65001 >nul
echo %g%_____________________________________________
echo.
echo     Uninstall provisioned Windows apps  
echo %g%_____________________________________________
echo --- App Connector app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Appconnector' | Remove-AppxPackage"
echo --- Uninstall Cortana app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.549981C3F5F10' | Remove-AppxPackage"
echo --- App Installer app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.DesktopAppInstaller' | Remove-AppxPackage"
echo --- Get Help app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.GetHelp' | Remove-AppxPackage"
echo --- Microsoft Tips app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Getstarted' | Remove-AppxPackage"
echo --- Microsoft Messaging app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Messaging' | Remove-AppxPackage"
echo --- Mixed Reality Portal app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MixedReality.Portal' | Remove-AppxPackage"
echo --- Feedback Hub app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsFeedbackHub' | Remove-AppxPackage"
echo --- Windows Alarms and Clock app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsAlarms' | Remove-AppxPackage"
echo --- Windows Camera app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsCamera' | Remove-AppxPackage"
echo --- Paint 3D app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MSPaint' | Remove-AppxPackage"
echo --- Windows Maps app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsMaps' | Remove-AppxPackage"
echo --- Minecraft for Windows 10 app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MinecraftUWP' | Remove-AppxPackage"
echo --- Microsoft Store app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsStore' | Remove-AppxPackage"
echo --- Microsoft People app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.People' | Remove-AppxPackage"
echo --- Microsoft Pay app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Wallet' | Remove-AppxPackage"
echo --- Store Purchase app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.StorePurchaseApp' | Remove-AppxPackage"
echo --- Snip ^& Sketch app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.ScreenSketch' | Remove-AppxPackage"
echo --- Print 3D app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Print3D' | Remove-AppxPackage"
echo --- Mobile Plans app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.OneConnect' | Remove-AppxPackage"
echo --- Microsoft Solitaire Collection app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MicrosoftSolitaireCollection' | Remove-AppxPackage"
echo --- Microsoft Sticky Notes app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MicrosoftStickyNotes' | Remove-AppxPackage"
echo --- Mail and Calendar app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'microsoft.windowscommunicationsapps' | Remove-AppxPackage"
echo --- Windows Calculator app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsCalculator' | Remove-AppxPackage"
echo --- Microsoft Photos app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Windows.Photos' | Remove-AppxPackage"
echo --- Skype app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.SkypeApp' | Remove-AppxPackage"
echo --- GroupMe app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.GroupMe10' | Remove-AppxPackage"
echo --- Windows Voice Recorder app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsSoundRecorder' | Remove-AppxPackage"
echo --- Microsoft 3D Builder app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.3DBuilder' | Remove-AppxPackage"
echo --- 3D Viewer app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Microsoft3DViewer' | Remove-AppxPackage"
echo --- MSN Weather app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.BingWeather' | Remove-AppxPackage"
echo --- MSN Sports app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.BingSports' | Remove-AppxPackage"
echo --- MSN News app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.BingNews' | Remove-AppxPackage"
echo --- MSN Money app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.BingFinance' | Remove-AppxPackage"
echo --- HEIF Image Extensions app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.HEIFImageExtension' | Remove-AppxPackage"
echo --- VP9 Video Extensions app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.VP9VideoExtensions' | Remove-AppxPackage"
echo --- Web Media Extensions app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WebMediaExtensions' | Remove-AppxPackage"
echo --- Webp Image Extensions app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WebpImageExtension' | Remove-AppxPackage"
echo --- My Office app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MicrosoftOfficeHub' | Remove-AppxPackage"
echo --- OneNote app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Office.OneNote' | Remove-AppxPackage"
echo --- Sway app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Office.Sway' | Remove-AppxPackage"
echo --- Xbox Console Companion app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.XboxApp' | Remove-AppxPackage"
echo --- Xbox Live in-game experience app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Xbox.TCUI' | Remove-AppxPackage"
echo --- Xbox Game Bar app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.XboxGamingOverlay' | Remove-AppxPackage"
echo --- Xbox Game Bar Plugin appcache
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.XboxGameOverlay' | Remove-AppxPackage"
echo --- Xbox Identity Provider app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.XboxIdentityProvider' | Remove-AppxPackage"
echo --- Xbox Speech To Text Overlay app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.XboxSpeechToTextOverlay' | Remove-AppxPackage"
echo --- Groove Music app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.ZuneMusic' | Remove-AppxPackage"
echo --- Movies and TV app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.ZuneVideo' | Remove-AppxPackage"
echo --- Your Phone Companion app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsPhone' | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Windows.Phone' | Remove-AppxPackage"
echo --- Communications - Phone app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.CommsPhone' | Remove-AppxPackage"
echo --- Your Phone app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.YourPhone' | Remove-AppxPackage"
timeout /t 2 >nulss
goto TweaksMenu

:DisableTelemetry
chcp 437 >null
chcp 65001 >nul
echo %g%____________________________________
echo.
echo     Disable Windows Telemerty  
echo %g%____________________________________
echo --- Disable Customer Experience Improvement (CEIP/SQM)
reg add "HKLM\Software\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f
echo --- Disable Application Impact Telemetry (AIT)
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f
echo --- Disable Customer Experience Improvement Program
schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /DISABLE
echo --- Disable telemetry in data collection policy
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /d 0 /t REG_DWORD /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "LimitEnhancedDiagnosticDataWindowsAnalytics" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f 
echo --- Disable license telemetry
reg add "HKLM\Software\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /v "NoGenTicket" /t "REG_DWORD" /d "1" /f
echo --- Disable error reporting
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t "REG_DWORD" /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultConsent" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultOverrideBehavior" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "1" /f
schtasks /Change /TN "Microsoft\Windows\ErrorDetails\EnableErrorDetailsUpdate" /Disable
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'wersvc'; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) {; Write-Host "^""Service `"^""$serviceName`"^"" could not be not found, no need to disable it."^""; Exit 0; }; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) {; Write-Host "^""`"^""$serviceName`"^"" is running, stopping it."^""; try {; Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else {; Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if already disabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) {; $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) {; $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq 'Disabled') {; Write-Host "^""$serviceName is already disabled, no further action is needed"^""; }; <# -- 4. Disable service #>; try {; Set-Service -Name "^""$serviceName"^"" -StartupType Disabled -Confirm:$false -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'wercplsupport'; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) {; Write-Host "^""Service `"^""$serviceName`"^"" could not be not found, no need to disable it."^""; Exit 0; }; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) {; Write-Host "^""`"^""$serviceName`"^"" is running, stopping it."^""; try {; Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else {; Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if already disabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) {; $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) {; $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq 'Disabled') {; Write-Host "^""$serviceName is already disabled, no further action is needed"^""; }; <# -- 4. Disable service #>; try {; Set-Service -Name "^""$serviceName"^"" -StartupType Disabled -Confirm:$false -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
echo --- Disable connected user experiences and telemetry service
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'DiagTrack'; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) {; Write-Host "^""Service `"^""$serviceName`"^"" could not be not found, no need to disable it."^""; Exit 0; }; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) {; Write-Host "^""`"^""$serviceName`"^"" is running, stopping it."^""; try {; Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else {; Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if already disabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) {; $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) {; $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq 'Disabled') {; Write-Host "^""$serviceName is already disabled, no further action is needed"^""; }; <# -- 4. Disable service #>; try {; Set-Service -Name "^""$serviceName"^"" -StartupType Disabled -Confirm:$false -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
echo --- Disable WAP push message routing service
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'dmwappushservice'; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) {; Write-Host "^""Service `"^""$serviceName`"^"" could not be not found, no need to disable it."^""; Exit 0; }; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) {; Write-Host "^""`"^""$serviceName`"^"" is running, stopping it."^""; try {; Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else {; Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if already disabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) {; $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) {; $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq 'Disabled') {; Write-Host "^""$serviceName is already disabled, no further action is needed"^""; }; <# -- 4. Disable service #>; try {; Set-Service -Name "^""$serviceName"^"" -StartupType Disabled -Confirm:$false -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
echo --- Disable diagnostics hub standard collector service
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'diagnosticshub.standardcollector.service'; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) {; Write-Host "^""Service `"^""$serviceName`"^"" could not be not found, no need to disable it."^""; Exit 0; }; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) {; Write-Host "^""`"^""$serviceName`"^"" is running, stopping it."^""; try {; Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else {; Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if already disabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) {; $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) {; $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq 'Disabled') {; Write-Host "^""$serviceName is already disabled, no further action is needed"^""; }; <# -- 4. Disable service #>; try {; Set-Service -Name "^""$serviceName"^"" -StartupType Disabled -Confirm:$false -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
echo --- Disable diagnostic execution service
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceName = 'diagsvc'; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue; if(!$service) {; Write-Host "^""Service `"^""$serviceName`"^"" could not be not found, no need to disable it."^""; Exit 0; }; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) {; Write-Host "^""`"^""$serviceName`"^"" is running, stopping it."^""; try {; Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else {; Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if already disabled #>; $startupType = $service.StartType <# Does not work before .NET 4.6.1 #>; if(!$startupType) {; $startupType = (Get-WmiObject -Query "^""Select StartMode From Win32_Service Where Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; if(!$startupType) {; $startupType = (Get-WmiObject -Class Win32_Service -Property StartMode -Filter "^""Name='$serviceName'"^"" -ErrorAction Ignore).StartMode; }; }; if($startupType -eq 'Disabled') {; Write-Host "^""$serviceName is already disabled, no further action is needed"^""; }; <# -- 4. Disable service #>; try {; Set-Service -Name "^""$serviceName"^"" -StartupType Disabled -Confirm:$false -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
echo --- Disable devicecensus.exe (telemetry) task
schtasks /change /TN "Microsoft\Windows\Device Information\Device" /disable
echo --- Disable devicecensus.exe (telemetry) process
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\'DeviceCensus.exe'" /v "Debugger" /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
echo --- Disable sending information to Customer Experience Improvement Program
schtasks /change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable
echo --- Disable Application Impact Telemetry Agent task
schtasks /change /TN "Microsoft\Windows\Application Experience\AitAgent" /disable
echo --- Disable "Disable apps to improve performance" reminder
schtasks /change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /disable
echo --- Disable Microsoft Compatibility Appraiser task
schtasks /change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable
echo --- Disable CompatTelRunner.exe (Microsoft Compatibility Appraiser) process
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\'CompatTelRunner.exe'" /v "Debugger" /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
timeout /t 2 >nulss
goto TweaksMenu


:DisableWindowsUpdates
chcp 437 >null
chcp 65001 >nul
echo %g%____________________________________
echo.
echo      Disable Windows Updates   
echo %g%____________________________________
if not "%1"=="admin" (powershell start -verb runas '%0' admin & exit /b)
if not "%2"=="system" (powershell %~dp0\PsExec.exe /accepteula -i -s -d '%0' admin system & exit /b)
net stop wuauserv
net stop UsoSvc
net stop uhssvc
net stop WaaSMedicSvc
sc config wuauserv start= disabled
sc failure wuauserv reset= 0 actions= ""
sc config UsoSvc start= disabled
sc failure UsoSvc reset= 0 actions= ""
sc config uhssvc start= disabled
sc failure uhssvc reset= 0 actions= ""
takeown /f C:\Windows\System32\WaaSMedicSvc.dll && icacls C:\Windows\System32\WaaSMedicSvc.dll /grant *S-1-1-0:F /t /c /l /q
rename C:\Windows\System32\WaaSMedicSvc.dll WaaSMedicSvc_BAK.dll
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v FailureActions /t REG_BINARY /d 000000000000000000000000030000001400000000000000c0d4010000000000e09304000000000000000000 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 1 /f
erase /f /s /q c:\windows\softwaredistribution\*.* && rmdir /s /q c:\windows\softwaredistribution
powershell -command "Get-ScheduledTask -TaskPath '\Microsoft\Windows\UpdateOrchestrator\' | Disable-ScheduledTask; Get-ScheduledTask -TaskPath '\Microsoft\Windows\UpdateAssistant\' | Disable-ScheduledTask; Get-ScheduledTask -TaskPath '\Microsoft\Windows\WaaSMedic\' | Disable-ScheduledTask; Get-ScheduledTask -TaskPath '\Microsoft\Windows\WindowsUpdate\' | Disable-ScheduledTask"
timeout /t 2 >nulss
echo Succesfully..
goto TweaksMenu

:SmartScreen
chcp 437 >null
chcp 65001 >nul
echo %g%_________________________________
echo.
echo     Disable SmartScreen   
echo %g%_________________________________
timeout /t 3 >nul
echo --- Disable SmartScreen for apps and files
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f
echo --- Disable SmartScreen in file explorer
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f
echo --- Disable SmartScreen preventing users from running applications
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "ShellSmartScreenLevel" /t REG_SZ /d "Warn" /f
echo --- Prevent Chromium Edge SmartScreen from blocking potentially unwanted apps
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenPuaEnabled" /t REG_DWORD /d "0" /f
echo --- Disable SmartScreen in Edge
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "PreventOverride" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "PreventOverride" /t REG_DWORD /d "0" /f
:: For Microsoft Edge version 77 or later
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PreventSmartScreenPromptOverride" /t REG_DWORD /d "0" /f
echo --- Disable SmartScreen in Internet Explorer
reg add "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0" /v "2301" /t REG_DWORD /d "1" /f
echo --- Turn off SmartScreen App Install Control feature
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControl" /t REG_SZ /d "Anywhere" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControlEnabled" /t "REG_DWORD" /d "0" /f
echo --- Turn off SmartScreen to check web content (URLs) that apps use
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f
timeout /t 2 >nulss
goto TweaksMenu


:MKT
chcp 437 >null
chcp 65001 >nul
echo %g%___________________________________
echo.
echo       Mouse/Keyboard Tweaks    
echo %g%___________________________________
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatDelay" /t REG_SZ /d "200" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatRate" /t REG_SZ /d "6" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "BounceTime" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "59" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last BounceKey Setting" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Delay" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Repeat" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /t REG_DWORD /d "1000" /f
Reg.exe add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f
Reg.exe add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "58" /f
Reg.exe add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "38" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f
Reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "0000000000000000156e000000000000004001000000000029dc0300000000000000280000000000" /f >nul 2>&1
Reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "0000000000000000fd11010000000000002404000000000000fc12000000000000c0bb0100000000" /f >nul 2>&1
Reg add "HKEY_USERS\.DEFAULT\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "HKEY_USERS\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "HKEY_USERS\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f >nul 2>&1
Reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d 
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d "100" /f
timeout /t 2 >nulss
goto TweaksMenu

:CO
chcp 437 >null
chcp 65001 >nul
echo %g%_____________________________________
echo.
echo            GPU Optimizations     
echo %g%_____________________________________
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c" /v "ValueMax" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c\DefaultPowerSchemeValues\8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c" /v "ValueMax" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
timeout /t 2 >nulss
goto TweaksMenu

:wget
:: [%~1=Download Name] [%~2=Silent Install]
ping -n 1 www.bing.com > NUL
	if %errorlevel%==1 (echo %R%[31m İnternet bağlantısı yok %R%[0m
						timeout /t 2 /nobreak > NUL
						goto :eof
)
echo    %R%[90m[Wget]%R%[0m ►%R%[33m %~n1%~x1%R%[0m indiriliyor %R%[90m/%R%[0m yükleniyor...
FOR /F "tokens=1" %%i in ('Findstr /C:"%~n1%~x1" %Location%\Files\Links.txt') do set link=%%i
%Location%\Files\wget.exe -c -q --no-check-certificate --show-progress "%link%" -t 10 -O %~1
goto :eof

:K
chcp 437 >null
chcp 65001 >nul
echo %g%_____________________________________
echo.
echo            Network Tweaks             
echo %g%_____________________________________
netsh advfirewall firewall set rule group="Network Discovery" new enable=Yes
netsh int tcp set heuristics disabled 
netsh int tcp set supp internet congestionprovider=ctcp
netsh int tcp set global rss=enabled
netsh int tcp set global chimney=disabled
netsh int tcp set global ecncapability=enabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global initialRto=3000
netsh int tcp set global timestamps=disabled 
netsh int tcp set global rsc=disabled 
netsh int tcp set global nonsackttresiliency=disabled
netsh int tcp set global MaxSynRetransmissions=2 
netsh int tcp set global fastopen=enabled
netsh int tcp set global fastopenfallback=enabled
netsh int tcp set global pacingprofile=off
netsh int tcp set global hystart=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int 6to4 set state state=enabled
netsh int udp set global uro=enabled
netsh winsock set autotuning on
netsh int tcp set supplemental template=custom icw=10
netsh interface teredo set state enterprise
netsh int tcp set security mpp=disabled
netsh int tcp set security profiles=disabled
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Ethernet" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Ethernet" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent
for /f %%r in ('Reg query "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /f "1" /d /s^|Findstr HKEY_') do (
Reg add %%r /v "NonBestEffortLimit" /t Reg_DWORD /d "0" /f 
Reg add %%r /v "DeadGWDetectDefault" /t Reg_DWORD /d "1" /f 
Reg add %%r /v "PerformRouterDiscovery" /t Reg_DWORD /d "1" /f
Reg add %%r /v "TCPNoDelay" /t Reg_DWORD /d "1" /f
Reg add %%r /v "TcpAckFrequency" /t Reg_DWORD /d "1" /f
Reg add %%r /v "TcpInitialRTT" /t Reg_DWORD /d "2" /f
Reg add %%r /v "TcpDelAckTicks" /t Reg_DWORD /d "0" /f
Reg add %%r /v "MTU" /t Reg_DWORD /d "1500" /f
Reg add %%r /v "UseZeroBroadcast" /t Reg_DWORD /d "0" /f
)
for /f %%a in ('Reg query HKLM /v "*WakeOnMagicPacket" /s ^| findstr  "HKEY"') do (
for /f %%i in ('Reg query "%%a" /v "*EEE" ^| findstr "HKEY"') do (Reg add "%%i" /v "*EEE" /t Reg_DWORD /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*FlowControl" ^| findstr "HKEY"') do (Reg add "%%i" /v "*FlowControl" /t Reg_DWORD /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "EnableSavePowerNow" ^| findstr "HKEY"') do (Reg add "%%i" /v "EnableSavePowerNow" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "EnablePowerManagement" ^| findstr "HKEY"') do (Reg add "%%i" /v "EnablePowerManagement" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "EnableDynamicPowerGating" ^| findstr "HKEY"') do (Reg add "%%i" /v "EnableDynamicPowerGating" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "EnableConnectedPowerGating" ^| findstr "HKEY"') do (Reg add "%%i" /v "EnableConnectedPowerGating" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "AutoPowerSaveModeEnabled" ^| findstr "HKEY"') do (Reg add "%%i" /v "AutoPowerSaveModeEnabled" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "AdvancedEEE" ^| findstr "HKEY"') do (Reg add "%%i" /v "AdvancedEEE" /t Reg_DWORD /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "ULPMode" ^| findstr "HKEY"') do (Reg add "%%i" /v "ULPMode" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "ReduceSpeedOnPowerDown" ^| findstr "HKEY"') do (Reg add "%%i" /v "ReduceSpeedOnPowerDown" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "EnablePME" ^| findstr "HKEY"') do (Reg add "%%i" /v "EnablePME" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*WakeOnMagicPacket" ^| findstr "HKEY"') do (Reg add "%%i" /v "*WakeOnMagicPacket" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*WakeOnPattern" ^| findstr "HKEY"') do (Reg add "%%i" /v "*WakeOnPattern" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*TCPChecksumOffloadIPv4" ^| findstr "HKEY"') do (Reg add "%%i" /v "*TCPChecksumOffloadIPv4" /t Reg_SZ /d "1" /f)
for /f %%i in ('Reg query "%%a" /v "*TCPChecksumOffloadIPv6" ^| findstr "HKEY"') do (Reg add "%%i" /v "*TCPChecksumOffloadIPv6" /t Reg_SZ /d "1" /f)
for /f %%i in ('Reg query "%%a" /v "*UDPChecksumOffloadIPv4" ^| findstr "HKEY"') do (Reg add "%%i" /v "*UDPChecksumOffloadIPv4" /t Reg_SZ /d "1" /f)
for /f %%i in ('Reg query "%%a" /v "*UDPChecksumOffloadIPv6" ^| findstr "HKEY"') do (Reg add "%%i" /v "*UDPChecksumOffloadIPv6" /t Reg_SZ /d "1" /f)
for /f %%i in ('Reg query "%%a" /v "WolShutdownLinkSpeed" ^| findstr "HKEY"') do (Reg add "%%i" /v "WolShutdownLinkSpeed" /t Reg_SZ /d "2" /f)
for /f %%i in ('Reg query "%%a" /v "*SpeedDuplex" ^| findstr "HKEY"') do (Reg add "%%i" /v "*SpeedDuplex" /t Reg_SZ /d "6" /f)
for /f %%i in ('Reg query "%%a" /v "*LsoV2IPv4" ^| findstr "HKEY"') do (Reg add "%%i" /v "*LsoV2IPv4" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*LsoV2IPv6" ^| findstr "HKEY"') do (Reg add "%%i" /v "*LsoV2IPv6" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*TransmitBuffers" ^| findstr "HKEY"') do (Reg add "%%i" /v "*TransmitBuffers" /t Reg_SZ /d "128" /f)
for /f %%i in ('Reg query "%%a" /v "*ReceiveBuffers" ^| findstr "HKEY"') do (Reg add "%%i" /v "*ReceiveBuffers" /t Reg_SZ /d "512" /f)
for /f %%i in ('Reg query "%%a" /v "*JumboPacket" ^| findstr "HKEY"') do (Reg add "%%i" /v "*JumboPacket" /t Reg_SZ /d "9014" /f)
for /f %%i in ('Reg query "%%a" /v "*PMARPOffload" ^| findstr "HKEY"') do (Reg add "%%i" /v "*PMARPOffload" /t Reg_SZ /d "1" /f)
for /f %%i in ('Reg query "%%a" /v "*PMNSOffload" ^| findstr "HKEY"') do (Reg add "%%i" /v "*PMNSOffload" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*InterruptModeration" ^| findstr "HKEY"') do (Reg add "%%i" /v "*InterruptModeration" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*ModernStandbyWoLMagicPacket" ^| findstr "HKEY"') do (Reg add "%%i" /v "*ModernStandbyWoLMagicPacket" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "WakeOnLinkChange" ^| findstr "HKEY"') do (Reg add "%%i" /v "WakeOnLinkChange" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*IPChecksumOffloadIPv4" ^| findstr "HKEY"') do (Reg add "%%i" /v "*IPChecksumOffloadIPv4" /t Reg_SZ /d "3" /f)
for /f %%i in ('Reg query "%%a" /v "*RSS" ^| findstr "HKEY"') do (Reg add "%%i" /v "*RSS" /t Reg_SZ /d "1" /f)
for /f %%i in ('Reg query "%%a" /v "*NumRssQueues" ^| findstr "HKEY"') do (Reg add "%%i" /v "*NumRssQueues" /t Reg_SZ /d "4" /f)
for /f %%i in ('Reg query "%%a" /v "EnableGreenEthernet" ^| findstr "HKEY"') do (Reg add "%%i" /v "EnableGreenEthernet" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "GigaLite" ^| findstr "HKEY"') do (Reg add "%%i" /v "GigaLite" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "PowerSavingMode" ^| findstr "HKEY"') do (Reg add "%%i" /v "PowerSavingMode" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "S5WakeOnLan" ^| findstr "HKEY"') do (Reg add "%%i" /v "S5WakeOnLan" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "AutoDisableGigabit" ^| findstr "HKEY"') do (Reg add "%%i" /v "AutoDisableGigabit" /t Reg_SZ /d "0" /f)
)
timeout /t 2 >nulss
goto TweaksMenu

:J
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
echo %g%_____________________________________
echo.
echo          Memory Optimizer       
echo %g%_____________________________________
sc stop BITS
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start DsSvc
for /f "tokens=3" %%a in ('sc queryex "DsSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start Dhcp
for /f "tokens=3" %%a in ('sc queryex "Dhcp" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start DPS 
for /f "tokens=3" %%a in ('sc queryex "DPS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start Dnscache
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start WinHttpAutoProxySvc
for /f "tokens=3" %%a in ('sc queryex "WinHttpAutoProxySvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start DcpSvc
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "DcpSvc"
sc start WlanSvc
for /f "tokens=3" %%a in ('sc queryex "WlanSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start LSM
for /f "tokens=3" %%a in ('sc queryex "LSM" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start smphost
for /f "tokens=3" %%a in ('sc queryex "smphost" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start PNRPsvc
for /f "tokens=3" %%a in ('sc queryex "PNRPsvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start SensrSvc
for /f "tokens=3" %%a in ('sc queryex "SensrSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Wcmsvc
for /f "tokens=3" %%a in ('sc queryex "Wcmsvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Wersvc
for /f "tokens=3" %%a in ('sc queryex "Wersvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Spooler
for /f "tokens=3" %%a in ('sc queryex "Spooler" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start vds
for /f "tokens=3" %%a in ('sc queryex "vds" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
timeout /t 2 >nulss
goto TweaksMenu

:A
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
echo %g%_____________________________________________
echo.
echo       Clear Windows logs / caches         
echo %g%_____________________________________________
@echo off
echo --- Clear thumbnail cache
del /f /s /q /a %LocalAppData%\Microsoft\Windows\Explorer\*.db
echo --- Clear Windows temp files
del /f /q %localappdata%\Temp\*
rd /s /q "%WINDIR%\Temp"
rd /s /q "%TEMP%"

echo --- Clear main telemetry file
if exist "%ProgramData%\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl" (
    takeown /f "%ProgramData%\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl" /r /d y
    icacls "%ProgramData%\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl" /grant administrators:F /t
    echo "" > "%ProgramData%\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl"
    echo Clear successful: "%ProgramData%\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl"
) else (
    echo "Main telemetry file does not exist. Good!"
)

echo --- Clear Event Logs in Event Viewer
wevtutil sl Microsoft-Windows-LiveId/Operational /ca:O:BAG:SYD:(A;;0x1;;;SY)(A;;0x5;;;BA)(A;;0x1;;;LA)
for /f "tokens=*" %%i in ('wevtutil.exe el') DO (
    echo Deleting event log: "%%i"
    wevtutil.exe cl %1 "%%i"
)

echo --- Clean Windows Defender scan history
del "%ProgramData%\Microsoft\Windows Defender\Scans\History\" /s /f /q

echo --- Clear Optional Component Manager and COM+ components logs
del /f /q %SystemRoot%\comsetup.log

echo --- Clear Distributed Transaction Coordinator logs
del /f /q %SystemRoot%\DtcInstall.log

echo --- Clear Pending File Rename Operations logs
del /f /q %SystemRoot%\PFRO.log

echo --- Clear Windows Deployment Upgrade Process Logs
del /f /q %SystemRoot%\setupact.log
del /f /q %SystemRoot%\setuperr.log

echo --- Clear Windows Setup Logs
del /f /q %SystemRoot%\setupapi.log
del /f /q %SystemRoot%\Panther\*
del /f /q %SystemRoot%\inf\setupapi.app.log
del /f /q %SystemRoot%\inf\setupapi.dev.log
del /f /q %SystemRoot%\inf\setupapi.offline.log

echo --- Clear Windows System Assessment Tool logs
del /f /q %SystemRoot%\Performance\WinSAT\winsat.log

echo --- Clear Password change events
del /f /q %SystemRoot%\debug\PASSWD.LOG

echo --- Clear user web cache database
del /f /q %localappdata%\Microsoft\Windows\WebCache\*.*

echo --- Clear system temp folder when no one is logged in
del /f /q %SystemRoot%\ServiceProfiles\LocalService\AppData\Local\Temp\*.*

echo --- Clear DISM (Deployment Image Servicing and Management) Logs
del /f /q  %SystemRoot%\Logs\CBS\CBS.log
del /f /q  %SystemRoot%\Logs\DISM\DISM.log

echo --- Clear WUAgent (Windows Update History) logs
setlocal EnableDelayedExpansion 
    SET /A wuau_service_running=0
    SC queryex "wuauserv"|Find "STATE"|Find /v "RUNNING">Nul||(
        SET /A wuau_service_running=1
        net stop wuauserv
    )
    del /q /s /f "%SystemRoot%\SoftwareDistribution"
    IF !wuau_service_running! == 1 (
        net start wuauserv
    )
endlocal

echo --- Clear Server-initiated Healing Events Logs
del /f /q "%SystemRoot%\Logs\SIH\*"

echo --- Common Language Runtime Logs
del /f /q "%LocalAppData%\Microsoft\CLR_v4.0\UsageTraces\*"
del /f /q "%LocalAppData%\Microsoft\CLR_v4.0_32\UsageTraces\*"
echo --- Network Setup Service Events Logs
del /f /q "%SystemRoot%\Logs\NetSetup\*"
echo --- Disk Cleanup tool (Cleanmgr.exe) Logs
del /f /q "%SystemRoot%\System32\LogFiles\setupcln\*"
echo --- Clear Windows update and SFC scan logs
del /f /q %SystemRoot%\Temp\CBS\*
echo --- Clear Windows Update Medic Service logs
takeown /f %SystemRoot%\Logs\waasmedic /r /d y
icacls %SystemRoot%\Logs\waasmedic /grant administrators:F /t
rd /s /q %SystemRoot%\Logs\waasmedic
echo --- Clear Cryptographic Services Traces
del /f /q %SystemRoot%\System32\catroot2\dberr.txt
del /f /q %SystemRoot%\System32\catroot2.log
del /f /q %SystemRoot%\System32\catroot2.jrs
del /f /q %SystemRoot%\System32\catroot2.edb
del /f /q %SystemRoot%\System32\catroot2.chk
echo --- Windows Update Events Logs
del /f /q "%SystemRoot%\Logs\SIH\*"
echo --- Windows Update Logs
del /f /q "%SystemRoot%\Traces\WindowsUpdate\*"
timeout /t 2 >nulss
goto TweaksMenu

:B
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
echo %g%_________________________
echo.
echo         Full Debloat        
echo %g%_________________________

echo --- App Connector app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Appconnector' | Remove-AppxPackage"
echo --- Uninstall Cortana app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.549981C3F5F10' | Remove-AppxPackage"
echo --- App Installer app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.DesktopAppInstaller' | Remove-AppxPackage"
echo --- Get Help app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.GetHelp' | Remove-AppxPackage"
echo --- Microsoft Tips app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Getstarted' | Remove-AppxPackage"
echo --- Microsoft Messaging app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Messaging' | Remove-AppxPackage"
echo --- Mixed Reality Portal app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MixedReality.Portal' | Remove-AppxPackage"
echo --- Feedback Hub app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsFeedbackHub' | Remove-AppxPackage"
echo --- Windows Alarms and Clock app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsAlarms' | Remove-AppxPackage"
echo --- Windows Camera app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsCamera' | Remove-AppxPackage"
echo --- Paint 3D app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MSPaint' | Remove-AppxPackage"
echo --- Windows Maps app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsMaps' | Remove-AppxPackage"
echo --- Minecraft for Windows 10 app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MinecraftUWP' | Remove-AppxPackage"
echo --- Microsoft Store app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsStore' | Remove-AppxPackage"
echo --- Microsoft People app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.People' | Remove-AppxPackage"
echo --- Microsoft Pay app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Wallet' | Remove-AppxPackage"
echo --- Store Purchase app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.StorePurchaseApp' | Remove-AppxPackage"
echo --- Snip ^& Sketch app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.ScreenSketch' | Remove-AppxPackage"
echo --- Print 3D app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Print3D' | Remove-AppxPackage"
echo --- Mobile Plans app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.OneConnect' | Remove-AppxPackage"
echo --- Microsoft Solitaire Collection app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MicrosoftSolitaireCollection' | Remove-AppxPackage"
echo --- Microsoft Sticky Notes app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MicrosoftStickyNotes' | Remove-AppxPackage"
echo --- Mail and Calendar app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'microsoft.windowscommunicationsapps' | Remove-AppxPackage"




:: ------------------Windows Calculator app------------------

echo --- Windows Calculator app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsCalculator' | Remove-AppxPackage"




:: -------------------Microsoft Photos app-------------------

echo --- Microsoft Photos app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Windows.Photos' | Remove-AppxPackage"




:: ------------------------Skype app-------------------------

echo --- Skype app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.SkypeApp' | Remove-AppxPackage"




:: -----------------------GroupMe app------------------------

echo --- GroupMe app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.GroupMe10' | Remove-AppxPackage"




:: ----------------Windows Voice Recorder app----------------

echo --- Windows Voice Recorder app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsSoundRecorder' | Remove-AppxPackage"




:: -----------------Microsoft 3D Builder app-----------------

echo --- Microsoft 3D Builder app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.3DBuilder' | Remove-AppxPackage"




:: ----------------------3D Viewer app-----------------------

echo --- 3D Viewer app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Microsoft3DViewer' | Remove-AppxPackage"




:: ---------------------MSN Weather app----------------------

echo --- MSN Weather app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.BingWeather' | Remove-AppxPackage"




:: ----------------------MSN Sports app----------------------

echo --- MSN Sports app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.BingSports' | Remove-AppxPackage"




:: -----------------------MSN News app-----------------------

echo --- MSN News app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.BingNews' | Remove-AppxPackage"




:: ----------------------MSN Money app-----------------------

echo --- MSN Money app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.BingFinance' | Remove-AppxPackage"




:: ----------------HEIF Image Extensions app-----------------

echo --- HEIF Image Extensions app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.HEIFImageExtension' | Remove-AppxPackage"




:: -----------------VP9 Video Extensions app-----------------

echo --- VP9 Video Extensions app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.VP9VideoExtensions' | Remove-AppxPackage"




:: -----------------Web Media Extensions app-----------------

echo --- Web Media Extensions app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WebMediaExtensions' | Remove-AppxPackage"




:: ----------------Webp Image Extensions app-----------------

echo --- Webp Image Extensions app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WebpImageExtension' | Remove-AppxPackage"




:: ----------------------My Office app-----------------------

echo --- My Office app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MicrosoftOfficeHub' | Remove-AppxPackage"




:: -----------------------OneNote app------------------------

echo --- OneNote app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Office.OneNote' | Remove-AppxPackage"




:: -------------------------Sway app-------------------------

echo --- Sway app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Office.Sway' | Remove-AppxPackage"




:: ----------------Xbox Console Companion app----------------

echo --- Xbox Console Companion app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.XboxApp' | Remove-AppxPackage"




:: -------------Xbox Live in-game experience app-------------

echo --- Xbox Live in-game experience app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Xbox.TCUI' | Remove-AppxPackage"




:: --------------------Xbox Game Bar app---------------------

echo --- Xbox Game Bar app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.XboxGamingOverlay' | Remove-AppxPackage"




:: --------------Xbox Game Bar Plugin appcache---------------

echo --- Xbox Game Bar Plugin appcache
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.XboxGameOverlay' | Remove-AppxPackage"




:: ----------------Xbox Identity Provider app----------------

echo --- Xbox Identity Provider app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.XboxIdentityProvider' | Remove-AppxPackage"




:: -------------Xbox Speech To Text Overlay app--------------

echo --- Xbox Speech To Text Overlay app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.XboxSpeechToTextOverlay' | Remove-AppxPackage"




:: ---------------------Groove Music app---------------------

echo --- Groove Music app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.ZuneMusic' | Remove-AppxPackage"




:: --------------------Movies and TV app---------------------

echo --- Movies and TV app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.ZuneVideo' | Remove-AppxPackage"




:: -----------------Your Phone Companion app-----------------

echo --- Your Phone Companion app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsPhone' | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Windows.Phone' | Remove-AppxPackage"




:: ----------------Communications - Phone app----------------

echo --- Communications - Phone app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.CommsPhone' | Remove-AppxPackage"




:: ----------------------Your Phone app----------------------

echo --- Your Phone app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.YourPhone' | Remove-AppxPackage"




:: ----------------Microsoft Advertising app-----------------

echo --- Microsoft Advertising app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Advertising.Xaml' | Remove-AppxPackage"




:: --------------------Remote Desktop app--------------------

echo --- Remote Desktop app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.RemoteDesktop' | Remove-AppxPackage"




:: ------------------Network Speed Test app------------------

echo --- Network Speed Test app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.NetworkSpeedTest' | Remove-AppxPackage"




:: -------------------Microsoft To Do app--------------------

echo --- Microsoft To Do app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Todos' | Remove-AppxPackage"




:: ------------------------Shazam app------------------------

echo --- Shazam app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'ShazamEntertainmentLtd.Shazam' | Remove-AppxPackage"




:: -------------------Candy Crush Saga app-------------------

echo --- Candy Crush Saga app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'king.com.CandyCrushSaga' | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'king.com.CandyCrushSodaSaga' | Remove-AppxPackage"




:: ----------------------Flipboard app-----------------------

echo --- Flipboard app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Flipboard.Flipboard' | Remove-AppxPackage"




:: -----------------------Twitter app------------------------

echo --- Twitter app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage '9E2F88E3.Twitter' | Remove-AppxPackage"




:: ---------------------iHeartRadio app----------------------

echo --- iHeartRadio app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'ClearChannelRadioDigital.iHeartRadio' | Remove-AppxPackage"




:: -----------------------Duolingo app-----------------------

echo --- Duolingo app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'D5EA27B7.Duolingo-LearnLanguagesforFree' | Remove-AppxPackage"




:: ------------------Photoshop Express app-------------------

echo --- Photoshop Express app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'AdobeSystemIncorporated.AdobePhotoshop' | Remove-AppxPackage"




:: -----------------------Pandora app------------------------

echo --- Pandora app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'PandoraMediaInc.29680B314EFC2' | Remove-AppxPackage"




:: -------------------Eclipse Manager app--------------------

echo --- Eclipse Manager app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage '46928bounde.EclipseManager' | Remove-AppxPackage"




:: ---------------------Code Writer app----------------------

echo --- Code Writer app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'ActiproSoftwareLLC.562882FEEB491' | Remove-AppxPackage"




:: -----------------------Spotify app------------------------

echo --- Spotify app
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'SpotifyAB.SpotifyMusic' | Remove-AppxPackage"




:: ---------------------File Picker app----------------------

echo --- File Picker app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers '1527c705-839a-4832-9118-54d4Bd6a0c89'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: --------------------File Explorer app---------------------

echo --- File Explorer app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'c5e2524a-ea46-4f67-841f-6a9465d9d515'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: -------------------App Resolver UX app--------------------

echo --- App Resolver UX app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'E2A4F912-2574-4A75-9BB0-0D023378592B'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: -----------Add Suggested Folders To Library app-----------

echo --- Add Suggested Folders To Library app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'InputApp'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"



:: Microsoft AAD Broker Plugin app (breaks Night Light settings, taskbar keyboard selection and Office app authentication)
echo --- Microsoft AAD Broker Plugin app (breaks Night Light settings, taskbar keyboard selection and Office app authentication)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.AAD.BrokerPlugin'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: --------------Microsoft Accounts Control app--------------

echo --- Microsoft Accounts Control app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.AccountsControl'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: -------------Microsoft Async Text Service app-------------

echo --- Microsoft Async Text Service app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.AsyncTextService'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: -------------------Contact Support app--------------------

echo --- Contact Support app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Windows.ContactSupport'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: -------------------Windows Print 3D app-------------------

echo --- Windows Print 3D app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Windows.Print3D'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: -----------------------Print UI app-----------------------

echo --- Print UI app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Windows.PrintDialog'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: ---Bio enrollment app (breaks biometric authentication)---

echo --- Bio enrollment app (breaks biometric authentication)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.BioEnrollment'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: -------------------Cred Dialog Host app-------------------

echo --- Cred Dialog Host app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.CredDialogHost'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: --------------------------EC app--------------------------

echo --- EC app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.ECApp'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: ---------------Lock app (shows lock screen)---------------

echo --- Lock app (shows lock screen)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.LockApp'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: ---------------Microsoft Edge (Legacy) app----------------

echo --- Microsoft Edge (Legacy) app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.MicrosoftEdge'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: -------Microsoft Edge (Legacy) Dev Tools Client app-------

echo --- Microsoft Edge (Legacy) Dev Tools Client app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.MicrosoftEdgeDevToolsClient'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: -----Win32 Web View Host app / Desktop App Web Viewer-----

echo --- Win32 Web View Host app / Desktop App Web Viewer
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Win32WebViewHost'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: ---------------Microsoft PPI Projection app---------------

echo --- Microsoft PPI Projection app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.PPIProjection'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: ------------------------ChxApp app------------------------

echo --- ChxApp app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.Apprep.ChxApp'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: ---------------Assigned Access Lock App app---------------

echo --- Assigned Access Lock App app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.AssignedAccessLockApp'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: --------------------Capture Picker app--------------------

echo --- Capture Picker app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.CapturePicker'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"



:: Cloud Experience Host app (breaks Windows Hello password/PIN sign-in options, and Microsoft cloud/corporate sign in)
echo --- Cloud Experience Host app (breaks Windows Hello password/PIN sign-in options, and Microsoft cloud/corporate sign in)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.CloudExperienceHost'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"



:: Content Delivery Manager app (automatically installs apps)
echo --- Content Delivery Manager app (automatically installs apps)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.ContentDeliveryManager'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: ------------Search app (breaks Windows search)------------

echo --- Search app (breaks Windows search)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.Cortana'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Windows.Search' | Remove-AppxPackage"




:: ----------------Holographic First Run app-----------------

echo --- Holographic First Run app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.Holographic.FirstRun'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: --------------OOBE Network Captive Port app---------------

echo --- OOBE Network Captive Port app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.OOBENetworkCaptivePortal'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: -------------OOBE Network Connection Flow app-------------

echo --- OOBE Network Connection Flow app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.OOBENetworkConnectionFlow'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: -----Windows 10 Family Safety / Parental Controls app-----

echo --- Windows 10 Family Safety / Parental Controls app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.ParentalControls'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"



:: My People / People Bar App on taskbar (People Experience Host)
echo --- My People / People Bar App on taskbar (People Experience Host)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.PeopleExperienceHost'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: -------------Pinning Confirmation Dialog app--------------

echo --- Pinning Confirmation Dialog app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.PinningConfirmationDialog'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: ---------Windows Security GUI (Sec Health UI) app---------

echo --- Windows Security GUI (Sec Health UI) app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.SecHealthUI'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: --------------Secondary Tile Experience app---------------

echo --- Secondary Tile Experience app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.SecondaryTileExperience'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"



:: Secure Assessment Browser app (breaks Microsoft Intune/Graph)
echo --- Secure Assessment Browser app (breaks Microsoft Intune/Graph)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.SecureAssessmentBrowser'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: -------------------Windows Feedback app-------------------

echo --- Windows Feedback app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.WindowsFeedback'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: ----Xbox Game Callable UI app (breaks Xbox Live games)----

echo --- Xbox Game Callable UI app (breaks Xbox Live games)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.XboxGameCallableUI'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: ---------------------CBS Preview app----------------------

echo --- CBS Preview app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Windows.CBSPreview'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: ------------------Kill OneDrive process-------------------

echo --- Kill OneDrive process
taskkill /f /im OneDrive.exe




:: --------------------Uninstall OneDrive--------------------

echo --- Uninstall OneDrive
if %PROCESSOR_ARCHITECTURE%==x86 (
    %SystemRoot%\System32\OneDriveSetup.exe /uninstall 2>nul
) else (
    %SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall 2>nul
)




:: ----------------Remove OneDrive leftovers-----------------

echo --- Remove OneDrive leftovers
rd "%UserProfile%\OneDrive" /q /s
rd "%LocalAppData%\Microsoft\OneDrive" /q /s
rd "%ProgramData%\Microsoft OneDrive" /q /s
rd "%SystemDrive%\OneDriveTemp" /q /s




:: ----------------Delete OneDrive shortcuts-----------------

echo --- Delete OneDrive shortcuts
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Microsoft OneDrive.lnk" /s /f /q
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk" /s /f /q
del "%USERPROFILE%\Links\OneDrive.lnk" /s /f /q




:: ----------------Disable usage of OneDrive-----------------

echo --- Disable usage of OneDrive
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /t REG_DWORD /v "DisableFileSyncNGSC" /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /t REG_DWORD /v "DisableFileSync" /d 1 /f




:: ---Prevent automatic OneDrive install for current user----

echo --- Prevent automatic OneDrive install for current user
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f




:: -----Prevent automatic OneDrive install for new users-----

echo --- Prevent automatic OneDrive install for new users
reg load "HKU\Default" "%SystemDrive%\Users\Default\NTUSER.DAT" 
reg delete "HKU\Default\software\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f
reg unload "HKU\Default"




:: ------------Remove OneDrive from explorer menu------------

echo --- Remove OneDrive from explorer menu
reg delete "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
reg delete "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
reg add "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v System.IsPinnedToNameSpaceTree /d "0" /t REG_DWORD /f
reg add "HKCR\Wow6432Node\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v System.IsPinnedToNameSpaceTree /d "0" /t REG_DWORD /f




:: -----------Delete all OneDrive related Services-----------

echo --- Delete all OneDrive related Services
for /f "tokens=1 delims=," %%x in ('schtasks /query /fo csv ^| find "OneDrive"') do schtasks /Delete /TN %%x /F




:: ------------Delete OneDrive path from registry------------

echo --- Delete OneDrive path from registry
reg delete "HKCU\Environment" /v "OneDrive" /f




:: -------------Uninstall Edge (chromium-based)--------------

echo --- Uninstall Edge (chromium-based)
PowerShell -ExecutionPolicy Unrestricted -Command "$installer = (Get-ChildItem "^""$env:ProgramFiles*\Microsoft\Edge\Application\*\Installer\setup.exe"^""); if (!$installer) {; Write-Host 'Could not find the installer'; } else {; & $installer.FullName -Uninstall -System-Level -Verbose-Logging -Force-Uninstall; }"




:: ------------Remove Meet Now icon from taskbar-------------

echo --- Remove Meet Now icon from taskbar
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAMeetNow" /t REG_DWORD /d 1 /f




:: --------DirectX Configuration Database capability---------

echo --- DirectX Configuration Database capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'DirectX.Configuration.Database*' | Remove-WindowsCapability -Online"




:: -------------Internet Explorer 11 capability--------------

echo --- Internet Explorer 11 capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Browser.InternetExplorer*' | Remove-WindowsCapability -Online"




:: ----------------Math Recognizer capability----------------

echo --- Math Recognizer capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'MathRecognizer*' | Remove-WindowsCapability -Online"




:: --OneSync capability (breaks Mail, People, and Calendar)--

echo --- OneSync capability (breaks Mail, People, and Calendar)
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'OneCoreUAP.OneSync*' | Remove-WindowsCapability -Online"




:: ----------------OpenSSH client capability-----------------

echo --- OpenSSH client capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'OpenSSH.Client*' | Remove-WindowsCapability -Online"




:: ----------------PowerShell ISE capability-----------------

echo --- PowerShell ISE capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Microsoft.Windows.PowerShell.ISE*' | Remove-WindowsCapability -Online"




:: -----------Print Management Console capability------------

echo --- Print Management Console capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Print.Management.Console*' | Remove-WindowsCapability -Online"




:: -----------------Quick Assist capability------------------

echo --- Quick Assist capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'App.Support.QuickAssist*' | Remove-WindowsCapability -Online"




:: ----------------Steps Recorder capability-----------------

echo --- Steps Recorder capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'App.StepsRecorder*' | Remove-WindowsCapability -Online"




:: -------------Windows Fax and Scan capability--------------

echo --- Windows Fax and Scan capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Print.Fax.Scan*' | Remove-WindowsCapability -Online"




:: ----------------.NET Framework capability-----------------

echo --- .NET Framework capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'NetFX3*' | Remove-WindowsCapability -Online"




:: -----------------Mixed Reality capability-----------------

echo --- Mixed Reality capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Analog.Holographic.Desktop*' | Remove-WindowsCapability -Online"
echo --- Wireless Display capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'App.WirelessDisplay.Connect*' | Remove-WindowsCapability -Online"
echo --- Accessibility - Braille Support capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Accessibility.Braille*' | Remove-WindowsCapability -Online"
echo --- Developer Mode capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Tools.DeveloperMode.Core*' | Remove-WindowsCapability -Online"
echo --- Graphics Tools capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Tools.Graphics.DirectX*' | Remove-WindowsCapability -Online"
echo --- IrDA capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Network.Irda*' | Remove-WindowsCapability -Online"
echo --- Microsoft WebDriver capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Microsoft.WebDriver*' | Remove-WindowsCapability -Online"
echo --- MSIX Packaging Tool Driver capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Msix.PackagingTool.Driver*' | Remove-WindowsCapability -Online"
echo --- OpenSSH Server capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'OpenSSH.Server*' | Remove-WindowsCapability -Online"



:: Windows Emergency Management Services and Serial Console capability
echo --- Windows Emergency Management Services and Serial Console capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Windows.Desktop.EMS-SAC.Tools*' | Remove-WindowsCapability -Online"




:: ------------------XPS Viewer capability-------------------

echo --- XPS Viewer capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'XPS.Viewer*' | Remove-WindowsCapability -Online"



:: RAS Connection Manager Administration Kit (CMAK) capability
echo --- RAS Connection Manager Administration Kit (CMAK) capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'RasCMAK.Client*' | Remove-WindowsCapability -Online"




:: -----------------RIP Listener capability------------------

echo --- RIP Listener capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'RIP.Listener*' | Remove-WindowsCapability -Online"




:: ---Simple Network Management Protocol (SNMP) capability---

echo --- Simple Network Management Protocol (SNMP) capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'SNMP.Client*' | Remove-WindowsCapability -Online"




:: ---------------SNMP WMI Provider capability---------------

echo --- SNMP WMI Provider capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'WMI-SNMP-Provider.Client*' | Remove-WindowsCapability -Online"




:: ------------Enterprise Cloud Print capability-------------

echo --- Enterprise Cloud Print capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Print.EnterpriseCloudPrint*' | Remove-WindowsCapability -Online"




:: -------------Mopria Cloud Service capability--------------

echo --- Mopria Cloud Service capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Print.MopriaCloudService*' | Remove-WindowsCapability -Online"



:: Active Directory Domain Services and Lightweight Directory Services Tools capability
echo --- Active Directory Domain Services and Lightweight Directory Services Tools capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.ActiveDirectory.DS-LDS.Tools*' | Remove-WindowsCapability -Online"



:: BitLocker Drive Encryption Administration Utilities capability
echo --- BitLocker Drive Encryption Administration Utilities capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.BitLocker.Recovery.Tools*' | Remove-WindowsCapability -Online"




:: -------Active Directory Certificate Services Tools--------

echo --- Active Directory Certificate Services Tools
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.CertificateServices.Tools*' | Remove-WindowsCapability -Online"




:: ---------------DHCP Server Tools capability---------------

echo --- DHCP Server Tools capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.DHCP.Tools*' | Remove-WindowsCapability -Online"




:: ---------------DNS Server Tools capability----------------

echo --- DNS Server Tools capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.Dns.Tools*' | Remove-WindowsCapability -Online"




:: -----------Failover Clustering Tools capability-----------

echo --- Failover Clustering Tools capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.FailoverCluster.Management.Tools*' | Remove-WindowsCapability -Online"




:: --------------File Services Tools capability--------------

echo --- File Services Tools capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.FileServices.Tools*' | Remove-WindowsCapability -Online"




:: ---------Group Policy Management Tools capability---------

echo --- Group Policy Management Tools capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.GroupPolicy.Management.Tools*' | Remove-WindowsCapability -Online"




:: ------IP Address Management (IPAM) Client capability------

echo --- IP Address Management (IPAM) Client capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.IPAM.Client.Tools*' | Remove-WindowsCapability -Online"




:: --------Data Center Bridging LLDP Tools capability--------

echo --- Data Center Bridging LLDP Tools capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.LLDP.Tools*' | Remove-WindowsCapability -Online"




:: ------Network Controller Management Tools capability------

echo --- Network Controller Management Tools capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.NetworkController.Tools*' | Remove-WindowsCapability -Online"




:: ---------Network Load Balancing Tools capability----------

echo --- Network Load Balancing Tools capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.NetworkLoadBalancing.Tools*' | Remove-WindowsCapability -Online"




:: --------Remote Access Management Tools capability---------

echo --- Remote Access Management Tools capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.RemoteAccess.Management.Tools*' | Remove-WindowsCapability -Online"




:: -------------------Server Manager Tools-------------------

echo --- Server Manager Tools
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.ServerManager.Tools*' | Remove-WindowsCapability -Online"




:: ---------------Shielded VM Tools capability---------------

echo --- Shielded VM Tools capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.Shielded.VM.Tools*' | Remove-WindowsCapability -Online"




:: -Storage Replica Module for Windows PowerShell capability-

echo --- Storage Replica Module for Windows PowerShell capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.StorageReplica.Tools*' | Remove-WindowsCapability -Online"




:: ------------Volume Activation Tools capability------------

echo --- Volume Activation Tools capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.VolumeActivation.Tools*' | Remove-WindowsCapability -Online"




:: -----Windows Server Update Services Tools capability------

echo --- Windows Server Update Services Tools capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.WSUS.Tools*' | Remove-WindowsCapability -Online"




:: --Storage Migration Service Management Tools capability---

echo --- Storage Migration Service Management Tools capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.StorageMigrationService.Management.Tools*' | Remove-WindowsCapability -Online"




:: Systems Insights Module for Windows PowerShell capability-

echo --- Systems Insights Module for Windows PowerShell capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Rsat.SystemInsights.Management.Tools*' | Remove-WindowsCapability -Online"




:: ----------Windows Storage Management capability-----------

echo --- Windows Storage Management capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Microsoft.Windows.StorageManagement*' | Remove-WindowsCapability -Online"




:: ----------OneCore Storage Management capability-----------

echo --- OneCore Storage Management capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Microsoft.OneCore.StorageManagement*' | Remove-WindowsCapability -Online"




:: -------------------Direct Play feature--------------------

echo --- Direct Play feature
dism /Online /Disable-Feature /FeatureName:"DirectPlay" /NoRestart




:: ----------------Internet Explorer feature-----------------

echo --- Internet Explorer feature
dism /Online /Disable-Feature /FeatureName:"Internet-Explorer-Optional-x64" /NoRestart
dism /Online /Disable-Feature /FeatureName:"Internet-Explorer-Optional-x84" /NoRestart
dism /Online /Disable-Feature /FeatureName:"Internet-Explorer-Optional-amd64" /NoRestart




:: ----------------Legacy Components feature-----------------

echo --- Legacy Components feature
dism /Online /Disable-Feature /FeatureName:"LegacyComponents" /NoRestart




:: ------------------Media Features feature------------------

echo --- Media Features feature
dism /Online /Disable-Feature /FeatureName:"MediaPlayback" /NoRestart




:: -----------------Scan Management feature------------------

echo --- Scan Management feature
dism /Online /Disable-Feature /FeatureName:"ScanManagementConsole" /NoRestart




:: ---------------Windows Fax and Scan feature---------------

echo --- Windows Fax and Scan feature
dism /Online /Disable-Feature /FeatureName:"FaxServicesClientPackage" /NoRestart




:: ---------------Windows Media Player feature---------------

echo --- Windows Media Player feature
dism /Online /Disable-Feature /FeatureName:"WindowsMediaPlayer" /NoRestart




:: ------------------Windows Search feature------------------

echo --- Windows Search feature
dism /Online /Disable-Feature /FeatureName:"SearchEngine-Client-Package" /NoRestart




:: ------------------Telnet Client feature-------------------

echo --- Telnet Client feature
dism /Online /Disable-Feature /FeatureName:"TelnetClient" /NoRestart




:: ---------------Net.TCP Port Sharing feature---------------

echo --- Net.TCP Port Sharing feature
dism /Online /Disable-Feature /FeatureName:"WCF-TCP-PortSharing45" /NoRestart




:: --------------------SMB Direct feature--------------------

echo --- SMB Direct feature
dism /Online /Disable-Feature /FeatureName:"SmbDirect" /NoRestart




:: -------------------TFTP Client feature--------------------

echo --- TFTP Client feature
dism /Online /Disable-Feature /FeatureName:"TFTP" /NoRestart




:: ---------------------Hyper-V feature----------------------

echo --- Hyper-V feature
dism /Online /Disable-Feature /FeatureName:"Microsoft-Hyper-V-All" /NoRestart




:: -----------Hyper-V GUI Management Tools feature-----------

echo --- Hyper-V GUI Management Tools feature
dism /Online /Disable-Feature /FeatureName:"Microsoft-Hyper-V-Management-Clients" /NoRestart




:: -------------Hyper-V Management Tools feature-------------

echo --- Hyper-V Management Tools feature
dism /Online /Disable-Feature /FeatureName:"Microsoft-Hyper-V-Tools-All" /NoRestart




:: ------Hyper-V Module for Windows PowerShell feature-------

echo --- Hyper-V Module for Windows PowerShell feature
dism /Online /Disable-Feature /FeatureName:"Microsoft-Hyper-V-Management-PowerShell" /NoRestart




:: -----------Print and Document Services feature------------

echo --- Print and Document Services feature
dism /Online /Disable-Feature /FeatureName:"Printing-Foundation-Features" /NoRestart




:: ---------------Work Folders Client feature----------------

echo --- Work Folders Client feature
dism /Online /Disable-Feature /FeatureName:"WorkFolders-Client" /NoRestart




:: -----------------Internet Printing Client-----------------

echo --- Internet Printing Client
dism /Online /Disable-Feature /FeatureName:"Printing-Foundation-InternetPrinting-Client" /NoRestart




:: --------------------LPD Print Service---------------------

echo --- LPD Print Service
dism /Online /Disable-Feature /FeatureName:"LPDPrintService" /NoRestart




:: -----------------LPR Port Monitor feature-----------------

echo --- LPR Port Monitor feature
dism /Online /Disable-Feature /FeatureName:"Printing-Foundation-LPRPortMonitor" /NoRestart




:: --------------Microsoft Print to PDF feature--------------

echo --- Microsoft Print to PDF feature
dism /Online /Disable-Feature /FeatureName:"Printing-PrintToPDFServices-Features" /NoRestart




:: -------------------XPS Services feature-------------------

echo --- XPS Services feature
dism /Online /Disable-Feature /FeatureName:"Printing-XPSServices-Features" /NoRestart




:: --------------------XPS Viewer feature--------------------

echo --- XPS Viewer feature
dism /Online /Disable-Feature /FeatureName:"Xps-Foundation-Xps-Viewer" /NoRestart
timeout /t 2 >nulss
goto TweaksMenu

:C
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
echo %g%_____________________________________
echo.
echo         Remover OneDrive)         
echo %g%_____________________________________
timeout /t 3 >nul
@echo off
fltmc >nul 2>&1 || (
    echo Administrator privileges are required.
    PowerShell Start -Verb RunAs '%0' 2> nul || (
        echo Right-click on the script and select "Run as administrator".
        pause & exit 1
    )
    exit 0
)



:: ------------------Kill OneDrive process-------------------

echo --- Kill OneDrive process
taskkill /f /im OneDrive.exe




:: --------------------Uninstall OneDrive--------------------

echo --- Uninstall OneDrive
if %PROCESSOR_ARCHITECTURE%==x86 (
    %SystemRoot%\System32\OneDriveSetup.exe /uninstall 2>nul
) else (
    %SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall 2>nul
)




:: ----------------Remove OneDrive leftovers-----------------

echo --- Remove OneDrive leftovers
rd "%UserProfile%\OneDrive" /q /s
rd "%LocalAppData%\Microsoft\OneDrive" /q /s
rd "%ProgramData%\Microsoft OneDrive" /q /s
rd "%SystemDrive%\OneDriveTemp" /q /s




:: ----------------Delete OneDrive shortcuts-----------------

echo --- Delete OneDrive shortcuts
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Microsoft OneDrive.lnk" /s /f /q
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk" /s /f /q
del "%USERPROFILE%\Links\OneDrive.lnk" /s /f /q




:: ----------------Disable usage of OneDrive-----------------

echo --- Disable usage of OneDrive
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /t REG_DWORD /v "DisableFileSyncNGSC" /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /t REG_DWORD /v "DisableFileSync" /d 1 /f




:: ---Prevent automatic OneDrive install for current user----

echo --- Prevent automatic OneDrive install for current user
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f




:: -----Prevent automatic OneDrive install for new users-----

echo --- Prevent automatic OneDrive install for new users
reg load "HKU\Default" "%SystemDrive%\Users\Default\NTUSER.DAT" 
reg delete "HKU\Default\software\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f
reg unload "HKU\Default"




:: ------------Remove OneDrive from explorer menu------------

echo --- Remove OneDrive from explorer menu
reg delete "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
reg delete "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
reg add "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v System.IsPinnedToNameSpaceTree /d "0" /t REG_DWORD /f
reg add "HKCR\Wow6432Node\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v System.IsPinnedToNameSpaceTree /d "0" /t REG_DWORD /f




:: -----------Delete all OneDrive related Services-----------

echo --- Delete all OneDrive related Services
for /f "tokens=1 delims=," %%x in ('schtasks /query /fo csv ^| find "OneDrive"') do schtasks /Delete /TN %%x /F




:: ------------Delete OneDrive path from registry------------

echo --- Delete OneDrive path from registry
reg delete "HKCU\Environment" /v "OneDrive" /f
goto TweaksMenu

:D
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
echo %g%___________________________________
echo.
echo            Remove Edge         
echo %g%___________________________________
timeout /t 3 >nul
@echo off
:: https://privacy.sexy — v0.11.4 — Sun, 09 Oct 2022 16:21:43 GMT

fltmc >nul 2>&1 || (
    echo Administrator privileges are required.
    PowerShell Start -Verb RunAs '%0' 2> nul || (
        echo Right-click on the script and select "Run as administrator".
        pause & exit 1
    )
    exit 0
)



:: ---------------Microsoft Edge (Legacy) app----------------

echo --- Microsoft Edge (Legacy) app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.MicrosoftEdge'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: -------Microsoft Edge (Legacy) Dev Tools Client app-------

echo --- Microsoft Edge (Legacy) Dev Tools Client app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.MicrosoftEdgeDevToolsClient'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: -----Win32 Web View Host app / Desktop App Web Viewer-----

echo --- Win32 Web View Host app / Desktop App Web Viewer
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Win32WebViewHost'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: ---------------Microsoft PPI Projection app---------------

echo --- Microsoft PPI Projection app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.PPIProjection'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: ------------------------ChxApp app------------------------

echo --- ChxApp app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.Apprep.ChxApp'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: ---------------Assigned Access Lock App app---------------

echo --- Assigned Access Lock App app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.AssignedAccessLockApp'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: --------------------Capture Picker app--------------------

echo --- Capture Picker app
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.CapturePicker'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"



:: Cloud Experience Host app (breaks Windows Hello password/PIN sign-in options, and Microsoft cloud/corporate sign in)
echo --- Cloud Experience Host app (breaks Windows Hello password/PIN sign-in options, and Microsoft cloud/corporate sign in)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.CloudExperienceHost'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"



:: Content Delivery Manager app (automatically installs apps)
echo --- Content Delivery Manager app (automatically installs apps)
PowerShell -ExecutionPolicy Unrestricted -Command "$package = Get-AppxPackage -AllUsers 'Microsoft.Windows.ContentDeliveryManager'; if (!$package) {; Write-Host 'Not installed'; exit 0; }; $directories = @($package.InstallLocation, "^""$env:LOCALAPPDATA\Packages\$($package.PackageFamilyName)"^""); foreach($dir in $directories) {; if ( !$dir -Or !(Test-Path "^""$dir"^"") ) { continue }; cmd /c ('takeown /f "^""' + $dir + '"^"" /r /d y 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; cmd /c ('icacls "^""' + $dir + '"^"" /grant administrators:F /t 1> nul'); if($LASTEXITCODE) { throw 'Failed to take ownership' }; $files = Get-ChildItem -File -Path $dir -Recurse -Force; foreach($file in $files) {; if($file.Name.EndsWith('.OLD')) { continue }; $newName =  $file.FullName + '.OLD'; Write-Host "^""Rename '$($file.FullName)' to '$newName'"^""; Move-Item -LiteralPath "^""$($file.FullName)"^"" -Destination "^""$newName"^"" -Force; }; }"




:: -------------Uninstall Edge (chromium-based)--------------

echo --- Uninstall Edge (chromium-based)
PowerShell -ExecutionPolicy Unrestricted -Command "$installer = (Get-ChildItem "^""$env:ProgramFiles*\Microsoft\Edge\Application\*\Installer\setup.exe"^""); if (!$installer) {; Write-Host 'Could not find the installer'; } else {; & $installer.FullName -Uninstall -System-Level -Verbose-Logging -Force-Uninstall; }"
goto TweaksMenu

:E
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
echo %g%________________________________________
echo.
echo     Remove Meet Now icon from taskbar
echo %g%________________________________________
timeout /t 3 >nul
@echo off
:: https://privacy.sexy — v0.11.4 — Sun, 09 Oct 2022 16:23:43 GMT

fltmc >nul 2>&1 || (
    echo Administrator privileges are required.
    PowerShell Start -Verb RunAs '%0' 2> nul || (
        echo Right-click on the script and select "Run as administrator".
        pause & exit 1
    )
    exit 0
)


:: ------------Remove Meet Now icon from taskbar-------------

echo --- Remove Meet Now icon from taskbar
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAMeetNow" /t REG_DWORD /d 1 /f

goto TweaksMenu

:F
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
echo %g%_____________________________________
echo.
echo         Disable Defender         
echo %g%_____________________________________
timeout /t 3 >nul
@echo off
:: https://privacy.sexy — v0.11.4 — Sun, 09 Oct 2022 16:23:43 GMT

fltmc >nul 2>&1 || (
    echo Administrator privileges are required.
    PowerShell Start -Verb RunAs '%0' 2> nul || (
        echo Right-click on the script and select "Run as administrator".
        pause & exit 1
    )
    exit 0
)



:: -----------Disable Microsoft Defender Antivirus-----------

echo --- Disable Microsoft Defender Antivirus
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d 1 /f




:: ------Disable Firewall through command-line utility-------

echo --- Disable Firewall through command-line utility
PowerShell -ExecutionPolicy Unrestricted -Command "if(!(Get-Command 'netsh' -ErrorAction Ignore)) {; throw '"^""netsh"^"" does not exist, is system installed correctly?'; }; $message=netsh advfirewall set allprofiles state off 2>&1; if($?) {; Write-Host "^""Successfully disabled firewall."^""; } else {; if($message -like '*Firewall service*') {; Write-Warning 'Cannot use CLI because MpsSvc or MpsDrv is not running. Try to enable them (revert) -> reboot -> re-run this?'; } else {; throw "^""Cannot disable: $message"^""; }; }"




:: ------------Disable Firewall through registry-------------

echo --- Disable Firewall through registry
:: Policy based
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f
:: Non-policy based
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PrivateProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f



:: Disable the Potentially Unwanted Application (PUA) feature
echo --- Disable the Potentially Unwanted Application (PUA) feature
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'PUAProtection'; $value = '0'; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -PUAProtection $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
:: For legacy versions: Windows 10 v1809 and Windows Server 2019
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\MpEngine" /v "MpEnablePus" /t REG_DWORD /d "0" /f
:: For newer Windows versions
reg add "HKLM\Software\Policies\Microsoft\Windows Defender" /v "PUAProtection" /t REG_DWORD /d "0" /f




:: ----------------Turn off tamper protection----------------

echo --- Turn off tamper protection
PowerShell -ExecutionPolicy Unrestricted -Command "$command = 'reg add "^""HKLM\SOFTWARE\Microsoft\Windows Defender\Features"^"" /v "^""TamperProtection"^"" /t REG_DWORD /d "^""4"^"" /f'; $trustedInstallerSid = [System.Security.Principal.SecurityIdentifier]::new('S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464'); $trustedInstallerName = $trustedInstallerSid.Translate([System.Security.Principal.NTAccount]); $streamOutFile = New-TemporaryFile; $batchFile = New-TemporaryFile; try {; $batchFile = Rename-Item $batchFile "^""$($batchFile.BaseName).bat"^"" -PassThru; "^""@echo off`r`n$command`r`nexit 0"^"" | Out-File $batchFile -Encoding ASCII; $taskName = 'privacy.sexy invoke'; schtasks.exe /delete /tn "^""$taskName"^"" /f 2>&1 | Out-Null <# Clean if something went wrong before, suppress any output #>; $taskAction = New-ScheduledTaskAction -Execute 'cmd.exe' -Argument "^""cmd /c `"^""$batchFile`"^"" > $streamOutFile 2>&1"^""; $settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries; Register-ScheduledTask -TaskName $taskName -Action $taskAction -Settings $settings -Force -ErrorAction Stop | Out-Null; try {; ($scheduleService = New-Object -ComObject Schedule.Service).Connect(); $scheduleService.GetFolder('\').GetTask($taskName).RunEx($null, 0, 0, $trustedInstallerName) | Out-Null; $timeOutLimit = (Get-Date).AddMinutes(5); Write-Host "^""Running as $trustedInstallerName"^""; while((Get-ScheduledTaskInfo $taskName).LastTaskResult -eq 267009) {; Start-Sleep -Milliseconds 200; if((Get-Date) -gt $timeOutLimit) {; Write-Warning "^""Skipping results, it took so long to execute script."^""; break;; }; }; if (($result = (Get-ScheduledTaskInfo $taskName).LastTaskResult) -ne 0) {; Write-Error "^""Failed to execute with exit code: $result."^""; }; } finally {; schtasks.exe /delete /tn "^""$taskName"^"" /f | Out-Null <# Outputs only errors #>; }; Get-Content $streamOutFile; } finally {; Remove-Item $streamOutFile, $batchFile; }"
PowerShell -ExecutionPolicy Unrestricted -Command "$command = 'reg add "^""HKLM\SOFTWARE\Microsoft\Windows Defender\Features"^"" /v "^""TamperProtectionSource"^"" /t REG_DWORD /d "^""2"^"" /f'; $trustedInstallerSid = [System.Security.Principal.SecurityIdentifier]::new('S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464'); $trustedInstallerName = $trustedInstallerSid.Translate([System.Security.Principal.NTAccount]); $streamOutFile = New-TemporaryFile; $batchFile = New-TemporaryFile; try {; $batchFile = Rename-Item $batchFile "^""$($batchFile.BaseName).bat"^"" -PassThru; "^""@echo off`r`n$command`r`nexit 0"^"" | Out-File $batchFile -Encoding ASCII; $taskName = 'privacy.sexy invoke'; schtasks.exe /delete /tn "^""$taskName"^"" /f 2>&1 | Out-Null <# Clean if something went wrong before, suppress any output #>; $taskAction = New-ScheduledTaskAction -Execute 'cmd.exe' -Argument "^""cmd /c `"^""$batchFile`"^"" > $streamOutFile 2>&1"^""; $settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries; Register-ScheduledTask -TaskName $taskName -Action $taskAction -Settings $settings -Force -ErrorAction Stop | Out-Null; try {; ($scheduleService = New-Object -ComObject Schedule.Service).Connect(); $scheduleService.GetFolder('\').GetTask($taskName).RunEx($null, 0, 0, $trustedInstallerName) | Out-Null; $timeOutLimit = (Get-Date).AddMinutes(5); Write-Host "^""Running as $trustedInstallerName"^""; while((Get-ScheduledTaskInfo $taskName).LastTaskResult -eq 267009) {; Start-Sleep -Milliseconds 200; if((Get-Date) -gt $timeOutLimit) {; Write-Warning "^""Skipping results, it took so long to execute script."^""; break;; }; }; if (($result = (Get-ScheduledTaskInfo $taskName).LastTaskResult) -ne 0) {; Write-Error "^""Failed to execute with exit code: $result."^""; }; } finally {; schtasks.exe /delete /tn "^""$taskName"^"" /f | Out-Null <# Outputs only errors #>; }; Get-Content $streamOutFile; } finally {; Remove-Item $streamOutFile, $batchFile; }"




:: ----------Disable file hash computation feature-----------

echo --- Disable file hash computation feature
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\MpEngine" /v "EnableFileHashComputation" /t REG_DWORD /d "0" /f




:: --------Disable always running antimalware service--------

echo --- Disable always running antimalware service
reg add "HKLM\Software\Policies\Microsoft\Windows Defender" /v "ServiceKeepAlive" /t REG_DWORD /d "1" /f




:: -----------------Disable auto-exclusions------------------

echo --- Disable auto-exclusions
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisableAutoExclusions'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisableAutoExclusions $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions" /v "DisableAutoExclusions" /t reg_DWORD /d "1" /f




:: --------------Turn off block at first sight---------------

echo --- Turn off block at first sight
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisableBlockAtFirstSeen'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisableBlockAtFirstSeen $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\SpyNet" /v "DisableBlockAtFirstSeen" /t REG_DWORD /d "1" /f



:: Set maximum time possible for extended cloud check timeout
echo --- Set maximum time possible for extended cloud check timeout
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\MpEngine" /v "MpBafsExtendedTimeout" /t REG_DWORD /d 50 /f




:: --------Set lowest possible cloud protection level--------

echo --- Set lowest possible cloud protection level
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\MpEngine" /v "MpCloudBlockLevel" /t REG_DWORD /d 0 /f



:: Disable receiving notifications to disable security intelligence
echo --- Disable receiving notifications to disable security intelligence
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Signature Updates" /v "SignatureDisableNotification" /t REG_DWORD /d 0 /f




:: --------Turn off Windows Defender SpyNet reporting--------

echo --- Turn off Windows Defender SpyNet reporting
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'MAPSReporting'; $value = '0'; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -MAPSReporting $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpynetReporting" /t REG_DWORD /d "0" /f




:: ------Do not send file samples for further analysis-------

echo --- Do not send file samples for further analysis
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'SubmitSamplesConsent'; $value = '2'; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -SubmitSamplesConsent $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /t REG_DWORD /d "2" /f




:: Disable Malicious Software Reporting tool diagnostic data-

echo --- Disable Malicious Software Reporting tool diagnostic data
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d 1 /f




:: -Disable uploading files for threat analysis in real-time-

echo --- Disable uploading files for threat analysis in real-time
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Signature Updates" /v "RealtimeSignatureDelivery" /t REG_DWORD /d 0 /f



:: Disable prevention of users and apps from accessing dangerous websites
echo --- Disable prevention of users and apps from accessing dangerous websites
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Network Protection" /v "EnableNetworkProtection" /t REG_DWORD /d "1" /f




:: -------------Disable Controlled folder access-------------

echo --- Disable Controlled folder access
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Controlled Folder Access" /v "EnableControlledFolderAccess" /t REG_DWORD /d "0" /f




:: ---------------Disable protocol recognition---------------

echo --- Disable protocol recognition
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\NIS" /v "DisableProtocolRecognition" /t REG_DWORD /d "1" /f




:: --------------Disable definition retirement---------------

echo --- Disable definition retirement
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\NIS\Consumers\IPS" /v "DisableSignatureRetirement" /t REG_DWORD /d "1" /f




:: ----------Limit detection events rate to minimum----------

echo --- Limit detection events rate to minimum
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\NIS\Consumers\IPS" /v "ThrottleDetectionEventsRate" /t REG_DWORD /d "10000000" /f




:: ---------------Disable real-time monitoring---------------

echo --- Disable real-time monitoring
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisableRealtimeMonitoring'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisableRealtimeMonitoring $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d "1" /f




:: --------Disable Intrusion Prevention System (IPS)---------

echo --- Disable Intrusion Prevention System (IPS)
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisableIntrusionPreventionSystem'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisableIntrusionPreventionSystem $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableIntrusionPreventionSystem" /t REG_DWORD /d "1" /f




:: -------Disable Information Protection Control (IPC)-------

echo --- Disable Information Protection Control (IPC)
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableInformationProtectionControl" /t REG_DWORD /d "1" /f




:: -----Disable process scanning on real-time protection-----

echo --- Disable process scanning on real-time protection
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableScanOnRealtimeEnable" /t REG_DWORD /d "1" /f




:: ---------------Disable behavior monitoring----------------

echo --- Disable behavior monitoring
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisableBehaviorMonitoring'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisableBehaviorMonitoring $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring" /t REG_DWORD /d "1" /f



:: Disable sending raw write notifications to behavior monitoring
echo --- Disable sending raw write notifications to behavior monitoring
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRawWriteNotification" /t REG_DWORD /d "1" /f




:: Disable scanning for all downloaded files and attachments-

echo --- Disable scanning for all downloaded files and attachments
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisableIOAVProtection'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisableIOAVProtection $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableIOAVProtection" /t REG_DWORD /d "1" /f



:: Disable scanning files bigger than 1 KB (minimum possible)
echo --- Disable scanning files bigger than 1 KB (minimum possible)
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "IOAVMaxSize" /t REG_DWORD /d "1" /f




:: -------Disable monitoring file and program activity-------

echo --- Disable monitoring file and program activity
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableOnAccessProtection" /t REG_DWORD /d "1" /f



:: Disable bidirectional scanning of incoming and outgoing file and program activity
echo --- Disable bidirectional scanning of incoming and outgoing file and program activity
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'RealTimeScanDirection'; $value = '1'; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -RealTimeScanDirection $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "RealTimeScanDirection" /t REG_DWORD /d "1" /f




:: ---------------Disable routine remediation----------------

echo --- Disable routine remediation
reg add "HKLM\Software\Policies\Microsoft\Windows Defender" /v "DisableRoutinelyTakingAction" /t REG_DWORD /d "1" /f




:: --------Disable running scheduled auto-remediation--------

echo --- Disable running scheduled auto-remediation
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Remediation" /v "Scan_ScheduleDay" /t REG_DWORD /d "8" /f
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'RemediationScheduleDay'; $value = '8'; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -RemediationScheduleDay $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"




:: ---------------Disable remediation actions----------------

echo --- Disable remediation actions
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'UnknownThreatDefaultAction'; $value = '9'; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -UnknownThreatDefaultAction $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Threats" /v "Threats_ThreatSeverityDefaultAction" /t "REG_DWORD" /d "1" /f
:: 1: Clean, 2: Quarantine, 3: Remove, 6: Allow, 8: Ask user, 9: No action, 10: Block, NULL: default (based on the update definition)
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Threats\ThreatSeverityDefaultAction" /v "5" /t "REG_SZ" /d "9" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Threats\ThreatSeverityDefaultAction" /v "4" /t "REG_SZ" /d "9" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Threats\ThreatSeverityDefaultAction" /v "3" /t "REG_SZ" /d "9" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Threats\ThreatSeverityDefaultAction" /v "2" /t "REG_SZ" /d "9" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Threats\ThreatSeverityDefaultAction" /v "1" /t "REG_SZ" /d "9" /f




:: ---------Auto-purge items from Quarantine folder----------

echo --- Auto-purge items from Quarantine folder
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'QuarantinePurgeItemsAfterDelay'; $value = '1'; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -QuarantinePurgeItemsAfterDelay $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Quarantine" /v "PurgeItemsAfterDelay" /t REG_DWORD /d "1" /f




:: -------Disable checking for signatures before scan--------

echo --- Disable checking for signatures before scan
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'CheckForSignaturesBeforeRunningScan'; $value = $False; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -CheckForSignaturesBeforeRunningScan $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "CheckForSignaturesBeforeRunningScan" /t REG_DWORD /d "0" /f




:: --Disable creating system restore point on a daily basis--

echo --- Disable creating system restore point on a daily basis
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisableRestorePoint'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisableRestorePoint $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "DisableRestorePoint" /t REG_DWORD /d "1" /f




:: Set minumum time for keeping files in scan history folder-

echo --- Set minumum time for keeping files in scan history folder
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'ScanPurgeItemsAfterDelay'; $value = '1'; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -ScanPurgeItemsAfterDelay $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "PurgeItemsAfterDelay" /t REG_DWORD /d "1" /f




:: ----Set maximum days before a catch-up scan is forced-----

echo --- Set maximum days before a catch-up scan is forced
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "MissedScheduledScanCountBeforeCatchup" /t REG_DWORD /d "20" /f




:: ---------------Disable catch-up full scans----------------

echo --- Disable catch-up full scans
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisableCatchupFullScan'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisableCatchupFullScan $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "DisableCatchupFullScan" /t REG_DWORD /d "1" /f




:: ---------------Disable catch-up quick scans---------------

echo --- Disable catch-up quick scans
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisableCatchupQuickScan'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisableCatchupQuickScan $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "DisableCatchupQuickScan" /t REG_DWORD /d "1" /f




:: -----------------Disable scan heuristics------------------

echo --- Disable scan heuristics
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "DisableHeuristics" /t REG_DWORD /d "1" /f




:: --------------Disable scanning when not idle--------------

echo --- Disable scanning when not idle
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'ScanOnlyIfIdleEnabled'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -ScanOnlyIfIdleEnabled $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "ScanOnlyIfIdle" /t REG_DWORD /d "1" /f




:: --Disable scheduled On Demand anti malware scanner (MRT)--

echo --- Disable scheduled On Demand anti malware scanner (MRT)
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 /f




:: ---------Limit CPU usage during scans to minimum----------

echo --- Limit CPU usage during scans to minimum
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'ScanAvgCPULoadFactor'; $value = '1'; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -ScanAvgCPULoadFactor $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "AvgCPULoadFactor" /t REG_DWORD /d "1" /f




:: -------Limit CPU usage during idle scans to minumum-------

echo --- Limit CPU usage during idle scans to minumum
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisableCpuThrottleOnIdleScans'; $value = $False; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisableCpuThrottleOnIdleScans $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "DisableCpuThrottleOnIdleScans" /t REG_DWORD /d "0" /f




:: -----------------Disable e-mail scanning------------------

echo --- Disable e-mail scanning
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisableEmailScanning'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisableEmailScanning $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "DisableEmailScanning" /t REG_DWORD /d "1" /f




:: -----------------Disable script scanning------------------

echo --- Disable script scanning
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisableScriptScanning'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisableScriptScanning $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"




:: --------------Disable reparse point scanning--------------

echo --- Disable reparse point scanning
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "DisableReparsePointScanning" /t REG_DWORD /d "1" /f




:: --Disable scanning on mapped network drives on full-scan--

echo --- Disable scanning on mapped network drives on full-scan
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "DisableScanningMappedNetworkDrivesForFullScan" /t REG_DWORD /d "1" /f
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisableScanningMappedNetworkDrivesForFullScan'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisableScanningMappedNetworkDrivesForFullScan $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"




:: --------------Disable scanning network files--------------

echo --- Disable scanning network files
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "DisableScanningNetworkFiles" /t REG_DWORD /d "1" /f
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisableScanningNetworkFiles'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisableScanningNetworkFiles $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"




:: -----------Disable scanning packed executables------------

echo --- Disable scanning packed executables
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "DisablePackedExeScanning" /t REG_DWORD /d "1" /f




:: ------------Disable scanning removable drives-------------

echo --- Disable scanning removable drives
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "DisableRemovableDriveScanning" /t REG_DWORD /d "1" /f
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisableRemovableDriveScanning'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisableRemovableDriveScanning $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"




:: --------------Disable scanning archive files--------------

echo --- Disable scanning archive files
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "DisableArchiveScanning" /t REG_DWORD /d "1" /f
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisableArchiveScanning'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisableArchiveScanning $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"




:: ----Limit depth for scanning archive files to minimum-----

echo --- Limit depth for scanning archive files to minimum
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "ArchiveMaxDepth" /t REG_DWORD /d "0" /f



:: Limit file size for archive files to be scanned to minimum
echo --- Limit file size for archive files to be scanned to minimum
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "ArchiveMaxSize" /t REG_DWORD /d "1" /f




:: -----------------Disable scheduled scans------------------

echo --- Disable scheduled scans
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "ScheduleDay" /t REG_DWORD /d "8" /f
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'ScanScheduleDay'; $value = '8'; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -ScanScheduleDay $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"




:: ---------Disable randomizing scheduled task times---------

echo --- Disable randomizing scheduled task times
reg add "HKLM\Software\Policies\Microsoft\Windows Defender" /v "RandomizeScheduleTaskTimes" /t REG_DWORD /d "0" /f
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'RandomizeScheduleTaskTimes'; $value = $False; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -RandomizeScheduleTaskTimes $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"




:: ---------------Disable scheduled full-scans---------------

echo --- Disable scheduled full-scans
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "ScanParameters" /t REG_DWORD /d "1" /f
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'ScanParameters'; $value = '1'; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -ScanParameters $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"




:: -------Limit how many times quick scans run per day-------

echo --- Limit how many times quick scans run per day
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "QuickScanInterval" /t REG_DWORD /d "24" /f



:: Disable scanning after security intelligence (signature) update
echo --- Disable scanning after security intelligence (signature) update
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Signature Updates" /v "DisableScanOnUpdate" /t REG_DWORD /d "1" /f



:: Limit Defender updates to those that complete gradual release cycle
echo --- Limit Defender updates to those that complete gradual release cycle
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisableGradualRelease'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisableGradualRelease $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"



:: Limit Defender engine updates to those that complete gradual release cycle
echo --- Limit Defender engine updates to those that complete gradual release cycle
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'EngineUpdatesChannel'; $value = 'Broad'; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -EngineUpdatesChannel $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"



:: Limit Defender platform updates to those that complete gradual release cycle
echo --- Limit Defender platform updates to those that complete gradual release cycle
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'PlatformUpdatesChannel'; $value = 'Broad'; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -PlatformUpdatesChannel $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"



:: Limit Defender definition updates to those that complete gradual release cycle
echo --- Limit Defender definition updates to those that complete gradual release cycle
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DefinitionUpdatesChannel'; $value = 'Broad'; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DefinitionUpdatesChannel $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"



:: Disable forced security intelligence (signature) updates from Microsoft Update
echo --- Disable forced security intelligence (signature) updates from Microsoft Update
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Signature Updates" /v "ForceUpdateFromMU" /t REG_DWORD /d 1 /f



:: Disable security intelligence (signature) updates when running on battery power
echo --- Disable security intelligence (signature) updates when running on battery power
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Signature Updates" /v "DisableScheduledSignatureUpdateOnBattery" /t REG_DWORD /d 1 /f



:: Disable checking for the latest virus and spyware security intelligence (signature) on startup
echo --- Disable checking for the latest virus and spyware security intelligence (signature) on startup
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Signature Updates" /v "UpdateOnStartUp" /t REG_DWORD /d 1 /f



:: Disable catch-up security intelligence (signature) updates
echo --- Disable catch-up security intelligence (signature) updates
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Signature Updates" /v "SignatureUpdateCatchupInterval" /t REG_DWORD /d "0" /f
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'SignatureUpdateCatchupInterval'; $value = '0'; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -SignatureUpdateCatchupInterval $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"




:: -Limit spyware security intelligence (signature) updates--

echo --- Limit spyware security intelligence (signature) updates
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Signature Updates" /v "ASSignatureDue" /t REG_DWORD /d 4294967295 /f




:: --Limit virus security intelligence (signature) updates---

echo --- Limit virus security intelligence (signature) updates
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Signature Updates" /v "AVSignatureDue" /t REG_DWORD /d 4294967295 /f



:: Disable security intelligence (signature) update on startup
echo --- Disable security intelligence (signature) update on startup
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Signature Updates" /v "DisableUpdateOnStartupWithoutEngine" /t REG_DWORD /d 1 /f
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'SignatureDisableUpdateOnStartupWithoutEngine'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -SignatureDisableUpdateOnStartupWithoutEngine $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"



:: Disable automatically checking security intelligence (signature) updates
echo --- Disable automatically checking security intelligence (signature) updates
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Signature Updates" /v "ScheduleDay" /t REG_DWORD /d "8" /f
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'SignatureScheduleDay'; $value = '8'; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -SignatureScheduleDay $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"



:: Limit update checks for security intelligence (signature) updates
echo --- Limit update checks for security intelligence (signature) updates
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Signature Updates" /v "SignatureUpdateInterval" /t REG_DWORD /d 24 /f
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'SignatureUpdateInterval'; $value = '24'; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -SignatureUpdateInterval $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"



:: Disable definition updates through both WSUS and the Microsoft Malware Protection Center
echo --- Disable definition updates through both WSUS and the Microsoft Malware Protection Center
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Signature Updates" /v "CheckAlternateHttpLocation" /t REG_DWORD /d "0" /f



:: Disable definition updates through both WSUS and Windows Update
echo --- Disable definition updates through both WSUS and Windows Update
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Signature Updates" /v "CheckAlternateDownloadLocation" /t REG_DWORD /d "0" /f




:: -------------Disable Windows Defender logging-------------

echo --- Disable Windows Defender logging
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "0" /f



:: Disable ETW Provider of Windows Defender (Windows Event Logs)
echo --- Disable ETW Provider of Windows Defender (Windows Event Logs)
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Windows Defender/Operational" /v "Enabled" /t Reg_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Windows Defender/WHC" /v "Enabled" /t Reg_DWORD /d 0 /f




:: ----------------Do not send Watson events-----------------

echo --- Do not send Watson events
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "DisableGenericRePorts" /t REG_DWORD /d 1 /f



:: Send minimum Windows software trace preprocessor (WPP Software Tracing) levels
echo --- Send minimum Windows software trace preprocessor (WPP Software Tracing) levels
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Reporting" /v "WppTracingLevel" /t REG_DWORD /d 1 /f



:: Disable auditing events in Microsoft Defender Application Guard
echo --- Disable auditing events in Microsoft Defender Application Guard
reg add "HKLM\SOFTWARE\Policies\Microsoft\AppHVSI" /v "AuditApplicationGuard" /t REG_DWORD /d 0 /f




:: --------Hide Windows Defender Security Center icon--------

echo --- Hide Windows Defender Security Center icon
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" /v "HideSystray" /t REG_DWORD /d "1" /f



:: Remove "Scan with Windows Defender" option from context menu
echo --- Remove "Scan with Windows Defender" option from context menu
reg delete "HKLM\SOFTWARE\Classes\CLSID\{09A47860-11B0-4DA5-AFA5-26D86198A780}\InprocServer32" /va /f 2>nul
reg delete "HKCR\CLSID\{09A47860-11B0-4DA5-AFA5-26D86198A780}" /v "InprocServer32" /f 2>nul
reg delete "HKCR\*\shellex\ContextMenuHandlers" /v "EPP" /f 2>nul
reg delete "HKCR\Directory\shellex\ContextMenuHandlers" /v "EPP" /f 2>nul
reg delete "HKCR\Drive\shellex\ContextMenuHandlers" /v "EPP" /f 2>nul




:: ---Remove Windows Defender Security Center from taskbar---

echo --- Remove Windows Defender Security Center from taskbar
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f 2>nul




:: -----------------Enable headless UI mode------------------

echo --- Enable headless UI mode
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "UILockdown" /t REG_DWORD /d "1" /f




:: --------Restrict threat history to administrators---------

echo --- Restrict threat history to administrators
PowerShell -ExecutionPolicy Unrestricted -Command "$propertyName = 'DisablePrivacyMode'; $value = $True; if((Get-MpPreference -ErrorAction Ignore).$propertyName -eq $value) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is already `"^""$value`"^"" as desired."^""; exit 0; }; $command = Get-Command 'Set-MpPreference' -ErrorAction Ignore; if (!$command) {; Write-Warning 'Skipping. Command not found: "^""Set-MpPreference"^"".'; exit 0; }; if(!$command.Parameters.Keys.Contains($propertyName)) {; Write-Host "^""Skipping. `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; }; try {; Invoke-Expression "^""$($command.Name) -Force -$propertyName `$value -ErrorAction Stop"^""; Set-MpPreference -Force -DisablePrivacyMode $value -ErrorAction Stop; Write-Host "^""Successfully set `"^""$propertyName`"^"" to `"^""$value`"^""."^""; exit 0; } catch {; if ( $_.FullyQualifiedErrorId -like '*0x800106ba*') {; Write-Warning "^""Cannot $($command.Name): Defender service (WinDefend) is not running. Try to enable it (revert) and re-run this?"^""; exit 0; } elseif (($_ | Out-String) -like '*Cannot convert*') {; Write-Host "^""Skipping. Argument `"^""$value`"^"" for property `"^""$propertyName`"^"" is not supported for `"^""$($command.Name)`"^""."^""; exit 0; } else {; Write-Error "^""Failed to set using $($command.Name): $_"^""; exit 1; }; }"
PowerShell -ExecutionPolicy Unrestricted -Command "$command = 'reg add "^""HKLM\SOFTWARE\Microsoft\Windows Defender\UX Configuration"^"" /v "^""DisablePrivacyMode"^"" /t REG_DWORD /d "^""1"^"" /f'; $trustedInstallerSid = [System.Security.Principal.SecurityIdentifier]::new('S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464'); $trustedInstallerName = $trustedInstallerSid.Translate([System.Security.Principal.NTAccount]); $streamOutFile = New-TemporaryFile; $batchFile = New-TemporaryFile; try {; $batchFile = Rename-Item $batchFile "^""$($batchFile.BaseName).bat"^"" -PassThru; "^""@echo off`r`n$command`r`nexit 0"^"" | Out-File $batchFile -Encoding ASCII; $taskName = 'privacy.sexy invoke'; schtasks.exe /delete /tn "^""$taskName"^"" /f 2>&1 | Out-Null <# Clean if something went wrong before, suppress any output #>; $taskAction = New-ScheduledTaskAction -Execute 'cmd.exe' -Argument "^""cmd /c `"^""$batchFile`"^"" > $streamOutFile 2>&1"^""; $settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries; Register-ScheduledTask -TaskName $taskName -Action $taskAction -Settings $settings -Force -ErrorAction Stop | Out-Null; try {; ($scheduleService = New-Object -ComObject Schedule.Service).Connect(); $scheduleService.GetFolder('\').GetTask($taskName).RunEx($null, 0, 0, $trustedInstallerName) | Out-Null; $timeOutLimit = (Get-Date).AddMinutes(5); Write-Host "^""Running as $trustedInstallerName"^""; while((Get-ScheduledTaskInfo $taskName).LastTaskResult -eq 267009) {; Start-Sleep -Milliseconds 200; if((Get-Date) -gt $timeOutLimit) {; Write-Warning "^""Skipping results, it took so long to execute script."^""; break;; }; }; if (($result = (Get-ScheduledTaskInfo $taskName).LastTaskResult) -ne 0) {; Write-Error "^""Failed to execute with exit code: $result."^""; }; } finally {; schtasks.exe /delete /tn "^""$taskName"^"" /f | Out-Null <# Outputs only errors #>; }; Get-Content $streamOutFile; } finally {; Remove-Item $streamOutFile, $batchFile; }"




:: -------Hide the "Virus and threat protection" area--------

echo --- Hide the "Virus and threat protection" area
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Virus and threat protection" /v "UILockdown" /t REG_DWORD /d "1" /f




:: ---------Hide the "Ransomware data recovery" area---------

echo --- Hide the "Ransomware data recovery" area
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Virus and threat protection" /v "HideRansomwareRecovery" /t REG_DWORD /d "1" /f




:: --------------Hide the "Family options" area--------------

echo --- Hide the "Family options" area
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Family options" /v "UILockdown" /t REG_DWORD /d "1" /f




:: ------Hide the "Device performance and health" area-------

echo --- Hide the "Device performance and health" area
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Device performance and health" /v "UILockdown" /t REG_DWORD /d "1" /f




:: ------------Hide the "Account protection" area------------

echo --- Hide the "Account protection" area
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Account protection" /v "UILockdown" /t REG_DWORD /d "1" /f




:: --------Hide the "App and browser protection" area--------

echo --- Hide the "App and browser protection" area
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\App and Browser protection" /v "UILockdown" /t REG_DWORD /d "1" /f




:: -----Hide the "Firewall and network protection" area------

echo --- Hide the "Firewall and network protection" area
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Firewall and network protection" /v "UILockdown" /t REG_DWORD /d "1" /f




:: --------------Hide the Device security area---------------

echo --- Hide the Device security area
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Device security" /v "UILockdown" /t REG_DWORD /d "1" /f




:: ---------------Disable the Clear TPM button---------------

echo --- Disable the Clear TPM button
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Device security" /v "DisableClearTpmButton" /t REG_DWORD /d "1" /f




:: -----------Disable the Secure boot area button------------

echo --- Disable the Secure boot area button
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Device security" /v "HideSecureBoot" /t REG_DWORD /d "1" /f




:: --Hide the Security processor (TPM) troubleshooter page---

echo --- Hide the Security processor (TPM) troubleshooter page
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Device security" /v "HideTPMTroubleshooting" /t REG_DWORD /d "1" /f




:: -------Hide the TPM Firmware Update recommendation--------

echo --- Hide the TPM Firmware Update recommendation
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Device security" /v "DisableTpmFirmwareUpdateWarning" /t REG_DWORD /d "1" /f



:: Disable Windows Action Center security and maintenance notifications
echo --- Disable Windows Action Center security and maintenance notifications
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "0" /f




:: ---Disable all Windows Defender Antivirus notifications---

echo --- Disable all Windows Defender Antivirus notifications
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /t REG_DWORD /d "1" /f




:: --------------Suppress reboot notifications---------------

echo --- Suppress reboot notifications
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "SuppressRebootNotification" /t REG_DWORD /d "1" /f




:: ------------------Hide all notifications------------------

echo --- Hide all notifications
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" /v "DisableNotifications" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /v "DisableNotifications" /t REG_DWORD /d "1" /f




:: -------------Hide non-critical notifications--------------

echo --- Hide non-critical notifications
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" /v "DisableEnhancedNotifications" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /v "DisableEnhancedNotifications" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Reporting" /v "DisableEnhancedNotifications" /t REG_DWORD /d "1" /f




:: --------Disable Windows Defender ExploitGuard task--------

echo --- Disable Windows Defender ExploitGuard task
schtasks /Change /TN "Microsoft\Windows\ExploitGuard\ExploitGuard MDM policy Refresh" /Disable 2>nul




:: -----Disable Windows Defender Cache Maintenance task------

echo --- Disable Windows Defender Cache Maintenance task
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance" /Disable 2>nul




:: ----------Disable Windows Defender Cleanup task-----------

echo --- Disable Windows Defender Cleanup task
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Cleanup" /Disable 2>nul




:: -------Disable Windows Defender Scheduled Scan task-------

echo --- Disable Windows Defender Scheduled Scan task
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan" /Disable 2>nul




:: --------Disable Windows Defender Verification task--------

echo --- Disable Windows Defender Verification task
schtasks /Change /TN "Microsoft\Windows\Windows Defender\Windows Defender Verification" /Disable 2>nul



:: Disable Windows Defender Firewall service (breaks Microsoft Store and `netsh advfirewall` CLI)
echo --- Disable Windows Defender Firewall service (breaks Microsoft Store and `netsh advfirewall` CLI)
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceQuery = 'MpsSvc'; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceQuery -ErrorAction SilentlyContinue; if(!$service) {; Write-Host "^""Service query `"^""$serviceQuery`"^"" did not yield any results, no need to disable it."^""; Exit 0; }; $serviceName = $service.Name; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) {; Write-Host "^""`"^""$serviceName`"^"" is running, trying to stop it."^""; try {; Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else {; Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if service info is not found in registry #>; $registryKey = "^""HKLM:\SYSTEM\CurrentControlSet\Services\$serviceName"^""; if(!(Test-Path $registryKey)) {; Write-Host "^""`"^""$registryKey`"^"" is not found in registry, cannot enable it."^""; Exit 0; }; <# -- 4. Skip if already disabled #>; if( $(Get-ItemProperty -Path "^""$registryKey"^"").Start -eq 4) {; Write-Host "^""`"^""$serviceName`"^"" is already disabled from start, no further action is needed."^""; Exit 0; }; <# -- 5. Disable service #>; try {; Set-ItemProperty $registryKey -Name Start -Value 4 -Force -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
if exist "%WinDir%\system32\mpssvc.dll" (
    takeown /f "%WinDir%\system32\mpssvc.dll"
    icacls "%WinDir%\system32\mpssvc.dll" /grant administrators:F
    move "%WinDir%\system32\mpssvc.dll" "%WinDir%\system32\mpssvc.dll.OLD" && (
        echo Moved "%WinDir%\system32\mpssvc.dll" to "%WinDir%\system32\mpssvc.dll.OLD"
    ) || (
        echo Could not move %WinDir%\system32\mpssvc.dll 1>&2
    )
) else (
    echo No action required: %WinDir%\system32\mpssvc.dll is not found.
)




:: --------Disable Windows Defender Antivirus service--------

echo --- Disable Windows Defender Antivirus service
PowerShell -ExecutionPolicy Unrestricted -Command "$command = 'sc stop "^""WinDefend"^"" >nul & sc config "^""WinDefend"^"" start=disabled'; $trustedInstallerSid = [System.Security.Principal.SecurityIdentifier]::new('S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464'); $trustedInstallerName = $trustedInstallerSid.Translate([System.Security.Principal.NTAccount]); $streamOutFile = New-TemporaryFile; $batchFile = New-TemporaryFile; try {; $batchFile = Rename-Item $batchFile "^""$($batchFile.BaseName).bat"^"" -PassThru; "^""@echo off`r`n$command`r`nexit 0"^"" | Out-File $batchFile -Encoding ASCII; $taskName = 'privacy.sexy invoke'; schtasks.exe /delete /tn "^""$taskName"^"" /f 2>&1 | Out-Null <# Clean if something went wrong before, suppress any output #>; $taskAction = New-ScheduledTaskAction -Execute 'cmd.exe' -Argument "^""cmd /c `"^""$batchFile`"^"" > $streamOutFile 2>&1"^""; $settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries; Register-ScheduledTask -TaskName $taskName -Action $taskAction -Settings $settings -Force -ErrorAction Stop | Out-Null; try {; ($scheduleService = New-Object -ComObject Schedule.Service).Connect(); $scheduleService.GetFolder('\').GetTask($taskName).RunEx($null, 0, 0, $trustedInstallerName) | Out-Null; $timeOutLimit = (Get-Date).AddMinutes(5); Write-Host "^""Running as $trustedInstallerName"^""; while((Get-ScheduledTaskInfo $taskName).LastTaskResult -eq 267009) {; Start-Sleep -Milliseconds 200; if((Get-Date) -gt $timeOutLimit) {; Write-Warning "^""Skipping results, it took so long to execute script."^""; break;; }; }; if (($result = (Get-ScheduledTaskInfo $taskName).LastTaskResult) -ne 0) {; Write-Error "^""Failed to execute with exit code: $result."^""; }; } finally {; schtasks.exe /delete /tn "^""$taskName"^"" /f | Out-Null <# Outputs only errors #>; }; Get-Content $streamOutFile; } finally {; Remove-Item $streamOutFile, $batchFile; }"



:: Disable Microsoft Defender Antivirus Network Inspection service
echo --- Disable Microsoft Defender Antivirus Network Inspection service
PowerShell -ExecutionPolicy Unrestricted -Command "$command = 'sc stop "^""WdNisSvc"^"" >nul & sc config "^""WdNisSvc"^"" start=disabled'; $trustedInstallerSid = [System.Security.Principal.SecurityIdentifier]::new('S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464'); $trustedInstallerName = $trustedInstallerSid.Translate([System.Security.Principal.NTAccount]); $streamOutFile = New-TemporaryFile; $batchFile = New-TemporaryFile; try {; $batchFile = Rename-Item $batchFile "^""$($batchFile.BaseName).bat"^"" -PassThru; "^""@echo off`r`n$command`r`nexit 0"^"" | Out-File $batchFile -Encoding ASCII; $taskName = 'privacy.sexy invoke'; schtasks.exe /delete /tn "^""$taskName"^"" /f 2>&1 | Out-Null <# Clean if something went wrong before, suppress any output #>; $taskAction = New-ScheduledTaskAction -Execute 'cmd.exe' -Argument "^""cmd /c `"^""$batchFile`"^"" > $streamOutFile 2>&1"^""; $settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries; Register-ScheduledTask -TaskName $taskName -Action $taskAction -Settings $settings -Force -ErrorAction Stop | Out-Null; try {; ($scheduleService = New-Object -ComObject Schedule.Service).Connect(); $scheduleService.GetFolder('\').GetTask($taskName).RunEx($null, 0, 0, $trustedInstallerName) | Out-Null; $timeOutLimit = (Get-Date).AddMinutes(5); Write-Host "^""Running as $trustedInstallerName"^""; while((Get-ScheduledTaskInfo $taskName).LastTaskResult -eq 267009) {; Start-Sleep -Milliseconds 200; if((Get-Date) -gt $timeOutLimit) {; Write-Warning "^""Skipping results, it took so long to execute script."^""; break;; }; }; if (($result = (Get-ScheduledTaskInfo $taskName).LastTaskResult) -ne 0) {; Write-Error "^""Failed to execute with exit code: $result."^""; }; } finally {; schtasks.exe /delete /tn "^""$taskName"^"" /f | Out-Null <# Outputs only errors #>; }; Get-Content $streamOutFile; } finally {; Remove-Item $streamOutFile, $batchFile; }"



:: Disable Windows Defender Advanced Threat Protection Service service
echo --- Disable Windows Defender Advanced Threat Protection Service service
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceQuery = 'Sense'; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceQuery -ErrorAction SilentlyContinue; if(!$service) {; Write-Host "^""Service query `"^""$serviceQuery`"^"" did not yield any results, no need to disable it."^""; Exit 0; }; $serviceName = $service.Name; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) {; Write-Host "^""`"^""$serviceName`"^"" is running, trying to stop it."^""; try {; Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else {; Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if service info is not found in registry #>; $registryKey = "^""HKLM:\SYSTEM\CurrentControlSet\Services\$serviceName"^""; if(!(Test-Path $registryKey)) {; Write-Host "^""`"^""$registryKey`"^"" is not found in registry, cannot enable it."^""; Exit 0; }; <# -- 4. Skip if already disabled #>; if( $(Get-ItemProperty -Path "^""$registryKey"^"").Start -eq 4) {; Write-Host "^""`"^""$serviceName`"^"" is already disabled from start, no further action is needed."^""; Exit 0; }; <# -- 5. Disable service #>; try {; Set-ItemProperty $registryKey -Name Start -Value 4 -Force -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
if exist "%ProgramFiles%\Windows Defender Advanced Threat Protection\MsSense.exe" (
    takeown /f "%ProgramFiles%\Windows Defender Advanced Threat Protection\MsSense.exe"
    icacls "%ProgramFiles%\Windows Defender Advanced Threat Protection\MsSense.exe" /grant administrators:F
    move "%ProgramFiles%\Windows Defender Advanced Threat Protection\MsSense.exe" "%ProgramFiles%\Windows Defender Advanced Threat Protection\MsSense.exe.OLD" && (
        echo Moved "%ProgramFiles%\Windows Defender Advanced Threat Protection\MsSense.exe" to "%ProgramFiles%\Windows Defender Advanced Threat Protection\MsSense.exe.OLD"
    ) || (
        echo Could not move %ProgramFiles%\Windows Defender Advanced Threat Protection\MsSense.exe 1>&2
    )
) else (
    echo No action required: %ProgramFiles%\Windows Defender Advanced Threat Protection\MsSense.exe is not found.
)




:: -----Disable Windows Defender Security Center Service-----

echo --- Disable Windows Defender Security Center Service
PowerShell -ExecutionPolicy Unrestricted -Command "$command = 'reg add "^""HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService"^"" /v Start /t REG_DWORD /d 4 /f'; $trustedInstallerSid = [System.Security.Principal.SecurityIdentifier]::new('S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464'); $trustedInstallerName = $trustedInstallerSid.Translate([System.Security.Principal.NTAccount]); $streamOutFile = New-TemporaryFile; $batchFile = New-TemporaryFile; try {; $batchFile = Rename-Item $batchFile "^""$($batchFile.BaseName).bat"^"" -PassThru; "^""@echo off`r`n$command`r`nexit 0"^"" | Out-File $batchFile -Encoding ASCII; $taskName = 'privacy.sexy invoke'; schtasks.exe /delete /tn "^""$taskName"^"" /f 2>&1 | Out-Null <# Clean if something went wrong before, suppress any output #>; $taskAction = New-ScheduledTaskAction -Execute 'cmd.exe' -Argument "^""cmd /c `"^""$batchFile`"^"" > $streamOutFile 2>&1"^""; $settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries; Register-ScheduledTask -TaskName $taskName -Action $taskAction -Settings $settings -Force -ErrorAction Stop | Out-Null; try {; ($scheduleService = New-Object -ComObject Schedule.Service).Connect(); $scheduleService.GetFolder('\').GetTask($taskName).RunEx($null, 0, 0, $trustedInstallerName) | Out-Null; $timeOutLimit = (Get-Date).AddMinutes(5); Write-Host "^""Running as $trustedInstallerName"^""; while((Get-ScheduledTaskInfo $taskName).LastTaskResult -eq 267009) {; Start-Sleep -Milliseconds 200; if((Get-Date) -gt $timeOutLimit) {; Write-Warning "^""Skipping results, it took so long to execute script."^""; break;; }; }; if (($result = (Get-ScheduledTaskInfo $taskName).LastTaskResult) -ne 0) {; Write-Error "^""Failed to execute with exit code: $result."^""; }; } finally {; schtasks.exe /delete /tn "^""$taskName"^"" /f | Out-Null <# Outputs only errors #>; }; Get-Content $streamOutFile; } finally {; Remove-Item $streamOutFile, $batchFile; }"
if exist "%WinDir%\system32\SecurityHealthService.exe" (
    takeown /f "%WinDir%\system32\SecurityHealthService.exe"
    icacls "%WinDir%\system32\SecurityHealthService.exe" /grant administrators:F
    move "%WinDir%\system32\SecurityHealthService.exe" "%WinDir%\system32\SecurityHealthService.exe.OLD" && (
        echo Moved "%WinDir%\system32\SecurityHealthService.exe" to "%WinDir%\system32\SecurityHealthService.exe.OLD"
    ) || (
        echo Could not move %WinDir%\system32\SecurityHealthService.exe 1>&2
    )
) else (
    echo No action required: %WinDir%\system32\SecurityHealthService.exe is not found.
)



:: Disable Windows Defender Firewall Authorization Driver service (breaks `netsh advfirewall` CLI)
echo --- Disable Windows Defender Firewall Authorization Driver service (breaks `netsh advfirewall` CLI)
PowerShell -ExecutionPolicy Unrestricted -Command "$serviceQuery = 'mpsdrv'; <# -- 1. Skip if service does not exist #>; $service = Get-Service -Name $serviceQuery -ErrorAction SilentlyContinue; if(!$service) {; Write-Host "^""Service query `"^""$serviceQuery`"^"" did not yield any results, no need to disable it."^""; Exit 0; }; $serviceName = $service.Name; Write-Host "^""Disabling service: `"^""$serviceName`"^""."^""; <# -- 2. Stop if running #>; if ($service.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running) {; Write-Host "^""`"^""$serviceName`"^"" is running, trying to stop it."^""; try {; Stop-Service -Name "^""$serviceName"^"" -Force -ErrorAction Stop; Write-Host "^""Stopped `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Warning "^""Could not stop `"^""$serviceName`"^"", it will be stopped after reboot: $_"^""; }; } else {; Write-Host "^""`"^""$serviceName`"^"" is not running, no need to stop."^""; }; <# -- 3. Skip if service info is not found in registry #>; $registryKey = "^""HKLM:\SYSTEM\CurrentControlSet\Services\$serviceName"^""; if(!(Test-Path $registryKey)) {; Write-Host "^""`"^""$registryKey`"^"" is not found in registry, cannot enable it."^""; Exit 0; }; <# -- 4. Skip if already disabled #>; if( $(Get-ItemProperty -Path "^""$registryKey"^"").Start -eq 4) {; Write-Host "^""`"^""$serviceName`"^"" is already disabled from start, no further action is needed."^""; Exit 0; }; <# -- 5. Disable service #>; try {; Set-ItemProperty $registryKey -Name Start -Value 4 -Force -ErrorAction Stop; Write-Host "^""Disabled `"^""$serviceName`"^"" successfully."^""; } catch {; Write-Error "^""Could not disable `"^""$serviceName`"^"": $_"^""; }"
if exist "%SystemRoot%\System32\drivers\mpsdrv.sys" (
    takeown /f "%SystemRoot%\System32\drivers\mpsdrv.sys"
    icacls "%SystemRoot%\System32\drivers\mpsdrv.sys" /grant administrators:F
    move "%SystemRoot%\System32\drivers\mpsdrv.sys" "%SystemRoot%\System32\drivers\mpsdrv.sys.OLD" && (
        echo Moved "%SystemRoot%\System32\drivers\mpsdrv.sys" to "%SystemRoot%\System32\drivers\mpsdrv.sys.OLD"
    ) || (
        echo Could not move %SystemRoot%\System32\drivers\mpsdrv.sys 1>&2
    )
) else (
    echo No action required: %SystemRoot%\System32\drivers\mpsdrv.sys is not found.
)



:: Disable Microsoft Defender Antivirus Network Inspection System Driver service
echo --- Disable Microsoft Defender Antivirus Network Inspection System Driver service
PowerShell -ExecutionPolicy Unrestricted -Command "$command = 'net stop "^""WdNisDrv"^"" /yes >nul & sc config "^""WdNisDrv"^"" start=disabled'; $trustedInstallerSid = [System.Security.Principal.SecurityIdentifier]::new('S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464'); $trustedInstallerName = $trustedInstallerSid.Translate([System.Security.Principal.NTAccount]); $streamOutFile = New-TemporaryFile; $batchFile = New-TemporaryFile; try {; $batchFile = Rename-Item $batchFile "^""$($batchFile.BaseName).bat"^"" -PassThru; "^""@echo off`r`n$command`r`nexit 0"^"" | Out-File $batchFile -Encoding ASCII; $taskName = 'privacy.sexy invoke'; schtasks.exe /delete /tn "^""$taskName"^"" /f 2>&1 | Out-Null <# Clean if something went wrong before, suppress any output #>; $taskAction = New-ScheduledTaskAction -Execute 'cmd.exe' -Argument "^""cmd /c `"^""$batchFile`"^"" > $streamOutFile 2>&1"^""; $settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries; Register-ScheduledTask -TaskName $taskName -Action $taskAction -Settings $settings -Force -ErrorAction Stop | Out-Null; try {; ($scheduleService = New-Object -ComObject Schedule.Service).Connect(); $scheduleService.GetFolder('\').GetTask($taskName).RunEx($null, 0, 0, $trustedInstallerName) | Out-Null; $timeOutLimit = (Get-Date).AddMinutes(5); Write-Host "^""Running as $trustedInstallerName"^""; while((Get-ScheduledTaskInfo $taskName).LastTaskResult -eq 267009) {; Start-Sleep -Milliseconds 200; if((Get-Date) -gt $timeOutLimit) {; Write-Warning "^""Skipping results, it took so long to execute script."^""; break;; }; }; if (($result = (Get-ScheduledTaskInfo $taskName).LastTaskResult) -ne 0) {; Write-Error "^""Failed to execute with exit code: $result."^""; }; } finally {; schtasks.exe /delete /tn "^""$taskName"^"" /f | Out-Null <# Outputs only errors #>; }; Get-Content $streamOutFile; } finally {; Remove-Item $streamOutFile, $batchFile; }"
if exist "%SystemRoot%\System32\drivers\WdNisDrv.sys" (
    takeown /f "%SystemRoot%\System32\drivers\WdNisDrv.sys"
    icacls "%SystemRoot%\System32\drivers\WdNisDrv.sys" /grant administrators:F
    move "%SystemRoot%\System32\drivers\WdNisDrv.sys" "%SystemRoot%\System32\drivers\WdNisDrv.sys.OLD" && (
        echo Moved "%SystemRoot%\System32\drivers\WdNisDrv.sys" to "%SystemRoot%\System32\drivers\WdNisDrv.sys.OLD"
    ) || (
        echo Could not move %SystemRoot%\System32\drivers\WdNisDrv.sys 1>&2
    )
) else (
    echo No action required: %SystemRoot%\System32\drivers\WdNisDrv.sys is not found.
)



:: Disable Microsoft Defender Antivirus Mini-Filter Driver service
echo --- Disable Microsoft Defender Antivirus Mini-Filter Driver service
PowerShell -ExecutionPolicy Unrestricted -Command "$command = 'sc stop "^""WdFilter"^"" >nul & sc config "^""WdFilter"^"" start=disabled'; $trustedInstallerSid = [System.Security.Principal.SecurityIdentifier]::new('S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464'); $trustedInstallerName = $trustedInstallerSid.Translate([System.Security.Principal.NTAccount]); $streamOutFile = New-TemporaryFile; $batchFile = New-TemporaryFile; try {; $batchFile = Rename-Item $batchFile "^""$($batchFile.BaseName).bat"^"" -PassThru; "^""@echo off`r`n$command`r`nexit 0"^"" | Out-File $batchFile -Encoding ASCII; $taskName = 'privacy.sexy invoke'; schtasks.exe /delete /tn "^""$taskName"^"" /f 2>&1 | Out-Null <# Clean if something went wrong before, suppress any output #>; $taskAction = New-ScheduledTaskAction -Execute 'cmd.exe' -Argument "^""cmd /c `"^""$batchFile`"^"" > $streamOutFile 2>&1"^""; $settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries; Register-ScheduledTask -TaskName $taskName -Action $taskAction -Settings $settings -Force -ErrorAction Stop | Out-Null; try {; ($scheduleService = New-Object -ComObject Schedule.Service).Connect(); $scheduleService.GetFolder('\').GetTask($taskName).RunEx($null, 0, 0, $trustedInstallerName) | Out-Null; $timeOutLimit = (Get-Date).AddMinutes(5); Write-Host "^""Running as $trustedInstallerName"^""; while((Get-ScheduledTaskInfo $taskName).LastTaskResult -eq 267009) {; Start-Sleep -Milliseconds 200; if((Get-Date) -gt $timeOutLimit) {; Write-Warning "^""Skipping results, it took so long to execute script."^""; break;; }; }; if (($result = (Get-ScheduledTaskInfo $taskName).LastTaskResult) -ne 0) {; Write-Error "^""Failed to execute with exit code: $result."^""; }; } finally {; schtasks.exe /delete /tn "^""$taskName"^"" /f | Out-Null <# Outputs only errors #>; }; Get-Content $streamOutFile; } finally {; Remove-Item $streamOutFile, $batchFile; }"
if exist "%SystemRoot%\System32\drivers\WdFilter.sys" (
    takeown /f "%SystemRoot%\System32\drivers\WdFilter.sys"
    icacls "%SystemRoot%\System32\drivers\WdFilter.sys" /grant administrators:F
    move "%SystemRoot%\System32\drivers\WdFilter.sys" "%SystemRoot%\System32\drivers\WdFilter.sys.OLD" && (
        echo Moved "%SystemRoot%\System32\drivers\WdFilter.sys" to "%SystemRoot%\System32\drivers\WdFilter.sys.OLD"
    ) || (
        echo Could not move %SystemRoot%\System32\drivers\WdFilter.sys 1>&2
    )
) else (
    echo No action required: %SystemRoot%\System32\drivers\WdFilter.sys is not found.
)

echo --- Disable Microsoft Defender Antivirus Boot Driver service
PowerShell -ExecutionPolicy Unrestricted -Command "$command = 'sc stop "^""WdBoot"^"" >nul & sc config "^""WdBoot"^"" start=disabled'; $trustedInstallerSid = [System.Security.Principal.SecurityIdentifier]::new('S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464'); $trustedInstallerName = $trustedInstallerSid.Translate([System.Security.Principal.NTAccount]); $streamOutFile = New-TemporaryFile; $batchFile = New-TemporaryFile; try {; $batchFile = Rename-Item $batchFile "^""$($batchFile.BaseName).bat"^"" -PassThru; "^""@echo off`r`n$command`r`nexit 0"^"" | Out-File $batchFile -Encoding ASCII; $taskName = 'privacy.sexy invoke'; schtasks.exe /delete /tn "^""$taskName"^"" /f 2>&1 | Out-Null <# Clean if something went wrong before, suppress any output #>; $taskAction = New-ScheduledTaskAction -Execute 'cmd.exe' -Argument "^""cmd /c `"^""$batchFile`"^"" > $streamOutFile 2>&1"^""; $settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries; Register-ScheduledTask -TaskName $taskName -Action $taskAction -Settings $settings -Force -ErrorAction Stop | Out-Null; try {; ($scheduleService = New-Object -ComObject Schedule.Service).Connect(); $scheduleService.GetFolder('\').GetTask($taskName).RunEx($null, 0, 0, $trustedInstallerName) | Out-Null; $timeOutLimit = (Get-Date).AddMinutes(5); Write-Host "^""Running as $trustedInstallerName"^""; while((Get-ScheduledTaskInfo $taskName).LastTaskResult -eq 267009) {; Start-Sleep -Milliseconds 200; if((Get-Date) -gt $timeOutLimit) {; Write-Warning "^""Skipping results, it took so long to execute script."^""; break;; }; }; if (($result = (Get-ScheduledTaskInfo $taskName).LastTaskResult) -ne 0) {; Write-Error "^""Failed to execute with exit code: $result."^""; }; } finally {; schtasks.exe /delete /tn "^""$taskName"^"" /f | Out-Null <# Outputs only errors #>; }; Get-Content $streamOutFile; } finally {; Remove-Item $streamOutFile, $batchFile; }"
if exist "%SystemRoot%\System32\drivers\WdBoot.sys" (
    takeown /f "%SystemRoot%\System32\drivers\WdBoot.sys"
    icacls "%SystemRoot%\System32\drivers\WdBoot.sys" /grant administrators:F
    move "%SystemRoot%\System32\drivers\WdBoot.sys" "%SystemRoot%\System32\drivers\WdBoot.sys.OLD" && (
        echo Moved "%SystemRoot%\System32\drivers\WdBoot.sys" to "%SystemRoot%\System32\drivers\WdBoot.sys.OLD"
    ) || (
        echo Could not move %SystemRoot%\System32\drivers\WdBoot.sys 1>&2
    )
) else (
    echo No action required: %SystemRoot%\System32\drivers\WdBoot.sys is not found.
)
echo --- Disable SmartScreen for apps and files
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f
echo --- Disable SmartScreen in file explorer
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f
echo --- Disable SmartScreen preventing users from running applications
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "ShellSmartScreenLevel" /t REG_SZ /d "Warn" /f
echo --- Prevent Chromium Edge SmartScreen from blocking potentially unwanted apps
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenPuaEnabled" /t REG_DWORD /d "0" /f
echo --- Disable SmartScreen in Edge
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "PreventOverride" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "PreventOverride" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PreventSmartScreenPromptOverride" /t REG_DWORD /d "0" /f
echo --- Disable SmartScreen in Internet Explorer
reg add "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0" /v "2301" /t REG_DWORD /d "1" /f
echo --- Turn off SmartScreen App Install Control feature
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControl" /t REG_SZ /d "Anywhere" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControlEnabled" /t "REG_DWORD" /d "0" /f
echo --- Turn off SmartScreen to check web content (URLs) that apps use
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f
goto TweaksMenu

:H
chcp 437>nul
chcp 65001 >nul
echo %g%_____________________________________
echo.
echo         Internet Refresher             
echo %g%_____________________________________
ipconfig /all
ipconfig /flushdns
ipconfig /release
ipconfig /renew
timeout /t 2 >nulss
goto TweaksMenu

:I
chcp 437>nul
chcp 65001 >nul
echo.

clsecho.
echo %g%_____________________________________
echo.
echo       Disable Automatic Updates  
echo %g%_____________________________________
echo --- Disable device metadata retrieval (breaks auto updates)
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d 1 /f
echo --- Do not include drivers with Windows Updates
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d 1 /f
echo --- Prevent Windows Update for device driver search
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d 0 /f
timeout /t 2 >nulss
goto TweaksMenu

:Finish
chcp 65001 >nul
echo.
echo.
echo.
echo  Thanks For Using Shades Toolbox!
echo.            
echo  Developer : Berkays0733
echo  Github: https://github.com/Berkays0733
echo.
echo  Tool will close automatically please wait...
timeout /t 5 >nul
exit
:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0