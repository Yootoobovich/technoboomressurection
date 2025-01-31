FROM python:3.9-slim

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо requirements.txt
COPY requirements.txt /app/

# Оновлюємо та встановлюємо системні залежності
RUN apt-get update && apt-get install -y --no-install-recommends \
    pkg-config \
    libmariadb-dev \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# Встановлюємо залежності Python
RUN pip install -v --no-cache-dir -r /app/requirements.txt

# Копіюємо решту файлів проєкту
COPY . /app/

# Інформація про порт, який прослуховує додаток (не публікує порт)
EXPOSE 8000

# Команда для запуску (або вкажіть CMD в Procfile)
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
