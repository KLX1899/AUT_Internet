@echo off
echo.
echo Hello!
echo Welcome to AUT internet keeper
echo.

:: === Your AUT credentials ===
set "USERNAME=Your_Username"
@REM You must change it with your username

set "PASSWORD=Your_Password"
@REM You must change it with your password



:: === Send login request using curl ===
curl -s -d "username=%USERNAME%&password=%PASSWORD%&dst=&popup=false&erase-cookie=false" https://login.aut.ac.ir/login

:: === Check internet connection ===
ping -n 2 google.com >nul 2>&1
if %errorlevel% equ 0 (
    echo Internet is available
) else (
    :: === Get SSID (Wi-Fi network name) ===
    for /f "tokens=2 delims=:" %%A in ('netsh wlan show interfaces ^| findstr /C:" SSID"') do (
        set "SSID=%%A"
    )

    setlocal enabledelayedexpansion
    set "SSID=!SSID:~1!"  :: Trim leading space

    if /i "!SSID!"=="CeWifi" (
        echo CE faculty's wifi disconnected :(
        call main.bat
    ) else if /i "!SSID!"=="CeWifi5G" (
        echo CE faculty's wifi disconnected :(
        call main.bat
    ) else (
        echo You're not connected to the CE faculty's wifi. :^|
    )
    endlocal
)
