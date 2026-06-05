#!/bin/bash
read -p "Введите номер порта: " port
pid=$(lsof -t -i :$port)
if [ -z "$pid" ]; then
    echo "Порт $port не используется."
else
    echo "Убиваю процесс $pid, слушающий порт $port"
    kill -9 $pid
    echo "Порт $port закрыт."
fi
