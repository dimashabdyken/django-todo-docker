#!/bin/bash

echo "Убиваем старые контейнеры"
docker rm -f django_web nginx_proxy postgres_db || true

echo "Чистка сирот"
docker-compose down --remove-orphans

echo "Запуск сирот"
docker-compose up -d --build web nginx db

echo "Готово. Проверка статуса контейнеров:"
docker-compose ps