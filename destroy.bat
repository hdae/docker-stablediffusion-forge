@echo off

cd %~dp0

docker compose down --rmi all --volumes --remove-orphans

echo %ERRORLEVEL%
if %ERRORLEVEL%==0 (
    echo Š®—¹
) else if %ERRORLEVEL%==1 (
    echo ‹N“®Ž¸”s: Docker‚ª“®‚¢‚Ä‚¢‚é‚©Šm”F‚µ‚Ä‚­‚¾‚³‚¢
    pause
)
