# my-sysadmin-scripts
# Мониторинг ресурсов

Скрипт `script.sh` раз в 10 секунд снимает состояние системы (`free -h`, `df -h`, `uptime`) и дописывает блок в лог `~/monitor.log` с временной меткой.


## Запуск

```bash
chmod +x monitor.sh
./monitor.sh
