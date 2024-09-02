@echo off

TITLE Royal
color 3F
mode con cols=100 lines=30  
chcp 65001 
cls


set /a rand=%random% %% 4 + 1


if %rand%==1 (
    set "logoType=LOGO1"
) else if %rand%==2 (
    set "logoType=LOGO2"
) else if %rand%==3 (
    set "logoType=LOGO3"
) else if %rand%==4  (
    set "logoType=LOGO4"
) else (
    set "logoType=LOGO5"
)


:hanyaroyal
echo Hanya Royal Yang tau!
set /p input=

if "%input%"=="apa?" (
    echo.
    echo Selamat Datang Royal
    CALL :titik
    cls
    call :%logoType%
    goto menu
) else (
    echo Kamu Bukan ROYAL!! SIAPA KAMU!!
    timeout /t 2 >nul
    cls
    goto hanyaroyal
)

:LOGO1
cls
echo.
echo                        ██████╗   ██████╗ ██╗   ██╗ █████╗  ██╗     
echo                        ██╔══██╗ ██╔═══██╗╚██╗ ██╔╝██╔══██╗ ██║     
echo                        ██████╔╝ ██║   ██║ ╚████╔╝ ███████║ ██║     
echo                        ██╔══██╗ ██║   ██║  ╚██╔╝  ██╔══██║ ██║     
echo                        ██║  ██║ ╚██████╔╝   ██║   ██║  ██║ ███████╗
echo                        ╚═╝  ╚═╝  ╚═════╝    ╚═╝   ╚═╝    ╝ ╚══════╝    
echo.
echo.
echo                                      Welcome Back!
echo.
goto :eof

:LOGO2
cls
echo.                  
echo                                                           __         
echo                          _____  ____    __  __  ____ _   / /         
echo                         / ___/ / __ \  / / / / / __ `/  / /          
echo                        / /    / /_/ / / /_/ / / /_/ /  / / _        
echo                       /_/     \____/  \__, /  \__,_/  /_/ (_)       
echo                                      /____/                          
echo.                                                                      
echo.               
echo.
echo                                     Welcome Back!
echo.
goto :eof

:LOGO3
echo.
echo.
echo                            █▄▄▄▄ ████▄ ▀▄    ▄ ██   █    
echo                            █  ▄▀ █   █   █  █  █ █  █    
echo                            █▀▀▌  █   █    ▀█   █▄▄█ █    
echo                            █  █  ▀████    █    █  █ ███▄ 
echo                              █          ▄▀        █     ▀
echo                             ▀                    █       
echo                                                 ▀        
echo.
echo.
echo                                     Welcome Back!
goto :eof

:LOGO4
echo.
echo.

echo                                   _,.---.---.---.--.._ 
echo                               _.-' `--.`---.`---'-. _,`--.._
echo                              /`--._ .'.     `.     `,`-.`-._\
echo                             /   \  `.`---.__`__..-`. ,'`-._/
echo            (Hi Royal)     ,`\ `-._\   \    `.    `_.-`-._,``-.
echo                     ,`  `-_ \/ `-.`--.\    _\_.-'\__.-`-.`-._`.
echo                    (_.o ,--. `._/'--.-`,--`  \_.-'       \`-._ \
echo                     `---'    `._ `---._/__,----`           `-. `-\
echo                               /_, ,  _..-'                    `-._\
echo                               \_, \/ ._(
echo                                \_, \/ ._\
echo                                 `._,\/ ._\ 
echo                                   `._// ./`-._
echo                                    `-._-_-_.-'
echo.                                                        
echo.
echo.
echo                                     Welcome Back!
goto :eof



:menu
cls
echo.
echo.
call :%logoType%
echo [1] Buka File
echo [2] Buka Game HUB
echo [3] Buka About ME
echo [4] Buka Youtube
echo.
set /p choice="Mau Ngapain? [1/2/3]: "
if "%choice%"=="1" goto fileMenu
if "%choice%"=="2" goto gameHub
if "%choice%"=="3" goto aboutMe
if "%choice%"=="4" goto bukaYoutube

echo Opsi tidak valid hanya ada 4 pilihan.
timeout /t 2 >nul
goto menu

:gameHub
cls
call :%logoType%
echo.
echo Mau Buka Game Apa?
echo [1] Buka Valorant
echo [2] Buka Dota 2
echo [3] Buka Minecraft
echo [4] Kembali Ke Menu  
echo.
set /p fileChoice="Mau Ngapain [1/2/3]"
if "%fileChoice%"=="1" goto bukaValorant
if "%fileChoice%"=="2" goto bukaDota
if "%fileChoice%"=="3" goto bukaMinecraft
if "%fileChoice%"=="4" goto menu
echo Opsi tidak valid hanya ada 3 Game.
timeout /t 2 >nul
goto gameHub

:aboutMe
cls
call :%logoType%
echo.
echo Kamu Mau Tau Aku Tentang Apa?
echo [1] Personal Identifiable Information
echo [2] School History
echo [3] Funfact About Me 
echo [4] Kembali Ke Menu  

echo.
set /p aboutChoose="[1/2/3]"
if "%aboutChoose%"=="1" goto bukaPii
if "%aboutChoose%"=="2" goto bukaSchool
if "%aboutChoose%"=="3" goto bukaFunfact
if "%aboutChoose%"=="4" goto menu



:bukaPii
cls
echo 
echo
echo 
echo.
pause
goto aboutMe

:bukaSchool
cls
echo 
echo 
echo.
pause
goto aboutMe

:bukaFunfact
cls
echo Funfact:
echo 1. 
echo 2. 
echo 3.
echo.
pause
goto aboutMe





:fileMenu
cls
call :%logoType%
echo.
echo Mau Buka Apa?
echo [1] Buka P 
echo [2] Buka File Sekolah
echo [3] Buka File komickListed
echo [4] Kembali Ke Menu 
echo.
set /p fileChoice="Mau Ngapain [1/2]"
if "%fileChoice%"=="1" goto psegala
if "%fileChoice%"=="2" goto fileSekolah
if "%fileChoice%"=="3" goto komickListed
if "%fileChoice%"=="4" goto menu

echo Opsi tidak valid hanya ada 3 Folder.
timeout /t 2 >nul
goto fileMenu



::Variabels
:komickListed
start notepad.exe "C:\xx\xx\xx\xx"
goto :eof

:bukaDota
start "" "steam://rungameid/xx"
goto :eof

:bukaMinecraft
start "" "E:\xx\xx"
goto :eof

:bukaValorant
start "" "E:\xx\xx\xx"
goto :eof

:psegala
start notepad.exe "C:\xx\xx\xx\xx"
goto :eof

:fileSekolah
start "" "E:\xx\xx"
goto :eof



:bukaYoutube
start https://www.youtube.com
goto :eof

:titik
setlocal enabledelayedexpansion
for /L %%A in (1,1,3) do (
    set "dots="
    for /L %%B in (1,1,%%A) do set "dots=!dots!."
    <nul set /p "=."
    timeout /t 1 >nul
)
echo.
endlocal
goto :eof
