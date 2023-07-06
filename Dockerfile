# Используем базовый образ Python
FROM python:3.9

# Установка рабочей директории в контейнере
WORKDIR /lb5_8

# Копирование всех файлов из корневой папки в контейнер
COPY . /lb5_8

# Обновление интерпретатора и установка зависимостей
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Запуск команды для запуска приложения
CMD python __init__.py