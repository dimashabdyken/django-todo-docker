# Dockerfile

FROM python:3.11-slim

# 2. Переменная окружения: Отключает буферизацию вывода Python,
#    чтобы логи Gunicorn немедленно отображались в Docker-логах.
ENV PYTHONUNBUFFERED 1

# 3. Установка рабочего каталога внутри контейнера
WORKDIR /usr/src/app


COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 5. Копирование всего остального кода проекта в рабочую директорию контейнера
#    (С учетом правил в .dockerignore)
COPY . .

# 6. Указываем, какой порт слушает приложение
EXPOSE 8000

# 7. Команда запуска: Запуск Gunicorn, который будет обслуживать Django
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "myproject.wsgi:application"]
