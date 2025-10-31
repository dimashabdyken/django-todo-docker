# nginx/Dockerfile

# Используем официальный базовый образ Nginx
FROM nginx:latest

# Копируем нашу конфигурацию Nginx в правильное место в контейнере
# Это гарантирует, что файл всегда будет там и будет правильного типа
COPY default.conf /etc/nginx/conf.d/default.conf