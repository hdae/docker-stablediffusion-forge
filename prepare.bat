
if not exist "config.json" (
    copy ".assets\config.json" "config.json"
    echo config.json ���쐬���܂����B
) else (
    echo config.json �͑��݂��܂��B
)

if not exist "ui-config.json" (
    copy ".assets\ui-config.json" "ui-config.json"
    echo ui-config.json ���쐬���܂����B
) else (
    echo ui-config.json �͑��݂��܂��B
)

if not exist "webui-user.sh" (
    copy ".assets\webui-user.sh" "webui-user.sh"
    echo webui-user.sh ���쐬���܂����B
) else (
    echo webui-user.sh �͑��݂��܂��B
)
