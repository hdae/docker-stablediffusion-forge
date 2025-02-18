
if not exist ".env" (
    copy ".assets\env" ".env"
    echo .env をコピーしました。
) else (
    echo .env は存在します。
)

if not exist "config.json" (
    copy ".assets\config.json" "config.json"
    echo config.json をコピーしました。
) else (
    echo config.json は存在します。
)

if not exist "ui-config.json" (
    copy ".assets\ui-config.json" "ui-config.json"
    echo ui-config.json をコピーしました。
) else (
    echo ui-config.json は存在します。
)

if not exist "webui-user.sh" (
    copy ".assets\webui-user.sh" "webui-user.sh"
    echo webui-user.sh をコピーしました。
) else (
    echo webui-user.sh は存在します。
)
