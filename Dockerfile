# День 1: базовая настройка проекта и Docker
# 1. Базовый образ Python
FROM python:3.11-slim

# 2. Рабочая директория внутри контейнера
WORKDIR /app

# 3. Копируем файл с зависимостями и ставим их
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Копируем весь остальной код
COPY . .

# 5. Открываем порт 8000
EXPOSE 8000

# 6. Команда запуска Django dev-сервера
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]