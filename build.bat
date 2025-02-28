@echo off

cd %~dp0

call prepare.bat

docker compose down --rmi all
docker compose build --no-cache

echo %ERRORLEVEL%
if %ERRORLEVEL%==0 (
    echo 完了
) else if %ERRORLEVEL%==1 (
    echo 起動失敗: Dockerが動いているか確認してください
    pause
)
