@echo off

cd %~dp0
docker compose --profile dynamic up

echo %ERRORLEVEL%
if %ERRORLEVEL%==0 (
    echo ����
) else if %ERRORLEVEL%==1 (
    echo �N�����s: Docker�������Ă��邩�m�F���Ă�������
    pause
)
