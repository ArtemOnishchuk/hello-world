#!/bin/bash

# Проверка количества переданных аргументов
if [ "$#" -ne 2 ]; then
    echo "Использование: $0 <dump_file> <backup_file>"
    exit 1
fi

# Переменные для хранения названий файлов
dump_file=""
backup_file=""

# Цикл по всем аргументам
for arg in "$@"; do
    # Проверка, является ли текущий аргумент файлом dump*.gz
    if [[ "$arg" == dump*.gz ]]; then
        dump_file="$arg"
    # Проверка, является ли текущий аргумент файлом backup_minio*.tar.gz
    elif [[ "$arg" == backup_minio*.tar.gz ]]; then
        backup_file="$arg"
    fi
done

# Проверка, что оба файла были найдены
if [ -z "$dump_file" ] || [ -z "$backup_file" ]; then
    echo "Ошибка: Укажите корректные названия файлов dump*.gz и backup_minio*.tar.gz"
    exit 1
fi

# Ваш код обработки файлов dump_file и backup_file
echo "Найдены файлы: $dump_file и $backup_file"

# Добавьте свой код обработки файлов здесь

exit 0
