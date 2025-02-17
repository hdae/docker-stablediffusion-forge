@echo off

cd %~dp0

copy /y- .config.json config.json
copy /y- .ui-config.json ui-config.json

docker compose build --no-cache

echo %ERRORLEVEL%
if %ERRORLEVEL%==0 (
    echo ����
) else if %ERRORLEVEL%==1 (
    echo �N�����s: Docker�������Ă��邩�m�F���Ă�������
    pause
)
