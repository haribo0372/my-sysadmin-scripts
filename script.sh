#!/bin/bash


LOG_FILE="$HOME/monitor.log"
INTERVAL=10

echo "Мониторинг запущен. Лог: $LOG_FILE, интервал: ${INTERVAL}s"
echo "Остановить: Ctrl+C"
echo ""

while true
do
    {
        echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---"
        free -h
        df -h
        uptime
        echo ""
    } >> "$LOG_FILE"

    sleep "$INTERVAL"
done
