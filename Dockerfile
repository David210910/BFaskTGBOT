# syntax=docker/dockerfile:1
FROM python:3.11-slim

# Настройки среды
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Рабочая директория
WORKDIR /app

# Установка зависимостей
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Копируем код
COPY . /app

# Команда запуска (Railway определит как процесс контейнера)
CMD ["python", "main.py"]

