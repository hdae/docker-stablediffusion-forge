@echo off

cd %~dp0

if not exist "config.json" (
    copy ".config.json" "config.json"
    echo config.json ���쐬���܂����B
) else (
    echo config.json �͑��݂��܂��B
)

if not exist "ui-config.json" (
    copy ".ui-config.json" "ui-config.json"
    echo ui-config.json ���쐬���܂����B
) else (
    echo ui-config.json �͑��݂��܂��B
)

docker compose build --no-cache

echo %ERRORLEVEL%
if %ERRORLEVEL%==0 (
    echo ����
) else if %ERRORLEVEL%==1 (
    echo �N�����s: Docker�������Ă��邩�m�F���Ă�������
    pause
)
