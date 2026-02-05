# Dockerfile

FROM python:3.11-slim


ENV PYTHONUNBUFFERED=1

# Установка рабочего каталога внутри контейнера
WORKDIR /usr/src/app


COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копирование всего остального кода проекта в рабочую директорию контейнера
COPY . .

# Указание, какой порт слушает приложение
EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]