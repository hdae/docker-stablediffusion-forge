@echo off

cd %~dp0
start cmd /c docker compose --profile static up <nul

echo %ERRORLEVEL%
if %ERRORLEVEL%==0 (
    echo ����
) else if %ERRORLEVEL%==1 (
    echo �N�����s: Docker�������Ă��邩�m�F���Ă�������
    pause
)
