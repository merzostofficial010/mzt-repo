#!/data/data/com.termux/files/usr/bin/sh
# Постоянный MZT-клиент: держит устройство в чате и перезапускает при сбоях.
# Вход: ~/.mzt/credentials (chmod 600), пример:
#   {"login":"phone1","password":"пароль","allow_shell":true}
# Либо переменные MZT_LOGIN / MZT_PASSWORD / MZT_ALLOW_SHELL=1.
PREFIX=${PREFIX:-/data/data/com.termux/files/usr}
command -v termux-wake-lock >/dev/null 2>&1 && termux-wake-lock
while true; do
    "$PREFIX/bin/connect" mzt --daemon
    sleep 10
done
