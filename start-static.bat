@echo off

cd %~dp0
start cmd /c docker compose --profile static up <nul

echo %ERRORLEVEL%
if %ERRORLEVEL%==0 (
    echo Š®—¹
) else if %ERRORLEVEL%==1 (
    echo ‹N“®Ž¸”s: Docker‚ª“®‚¢‚Ä‚¢‚é‚©Šm”F‚µ‚Ä‚­‚¾‚³‚¢
    pause
)
