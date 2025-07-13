#!/bin/bash
# Заменяем переменные в конфигах
envsubst '${DOMAIN}' < ./nginx/templates/n8n.conf.template > ./nginx/conf.d/n8n.conf

# Запускаем сервисы
docker-compose up -d