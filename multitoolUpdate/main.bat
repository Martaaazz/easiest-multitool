
@echo off
title MultiTool - by boooreed
chcp 65001 >nul


pause

:start
call :bannner

cd files


:menu
echo    [91m╔═(1) Discord                               ╔═(7) Disk Cleanup
echo    [91m║                                           ║ 
echo    [91m╚══(2) Steam                                ╚══(8) Computer Managment
echo    [91m║
echo    [91m╚════(3) Spotify
echo    [91m║
echo    [91m╚══════(4) Medal
echo    [91m║
echo    [91m╚═══════(5) Turn off PC
echo    [91m║
echo    [91m╚════════(6) Send Discord Webhook [0m
set /p input=.%BS%    [91m╚═══» [0m
if /I %input% EQU 1 start Discord.lnk
if /I %input% EQU 2 start Steam.lnk
if /I %input% EQU 3 start Spotify.lnk
if /I %input% EQU 4 start Medal.lnk
if /I %input% EQU 5 shutdown.exe -s -t 00
if /I "%input%" EQU "6" goto :webhook
if /I %input% EQU 7 start disk.lnk
if /I %input% EQU 8 start comp.lnk
cls
goto start

:webhook
cls
echo.
echo [93m--- Discord Webhook Sender ---[0m
set /p "url=Wklej URL Webhooka: "
set /p "msg=Wpisz tresc wiadomosci: "

:: Wysłanie żądania przez cURL
curl -H "Content-Type: application/json" -X POST -d "{\"content\": \"%msg%\"}" %url%

echo.
echo [92mZadanie wykonane![0m
pause

goto start

exit /b
:bannner
echo.
echo  [91m     __                       __    [0m  
echo  [91m    /\ \                     /\ \__   [0m      
echo  [91m  __\ \ \___     ___     ____\ \ ,_\             ________________  [0m
echo  [38;5;214m/'_ `\ \  _ `\  / __`\  /',__\\ \ \/            / 𝙗𝙮:𝙈𝙪𝙡𝙩𝙞𝙏𝙤𝙤𝙡   \ [0m
echo [38;5;214m/\ \L\ \ \ \ \ \/\ \L\ \/\__, `\\ \ \_          / 𝙗𝙮: 𝙗𝙤𝙤𝙤𝙧𝙚𝙚𝙙     \ [0m
echo  [38;5;214m\ \____ \ \_\ \_\ \____/\/\____/ \ \__\[0m    [93m    \__________________/ [0m
echo   [93m\/___L\ \/_/\/_/\/___/  \/___/   \/__/[0m 
echo    [93m /\____/                             [0m 
echo    [93m\_/__/                                 [0m                                                               
echo.
echo.
goto :eof