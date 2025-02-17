@echo off

cd %~dp0

if not exist "config.json" (
    copy ".config.json" "config.json"
    echo config.json を作成しました。
) else (
    echo config.json は存在します。
)

if not exist "ui-config.json" (
    copy ".ui-config.json" "ui-config.json"
    echo ui-config.json を作成しました。
) else (
    echo ui-config.json は存在します。
)

docker compose build --no-cache

echo %ERRORLEVEL%
if %ERRORLEVEL%==0 (
    echo 完了
) else if %ERRORLEVEL%==1 (
    echo 起動失敗: Dockerが動いているか確認してください
    pause
)
