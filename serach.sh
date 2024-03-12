#!/bin/bash

# Искомое слово
search_word="data"

# Поиск папки по заданному слову
folder=$(find /path/to/search -type d -name "*$search_word*" -print -quit)

# Проверка наличия найденной папки
if [ -n "$folder" ]; then
    echo "Папка найдена: $folder"
else
    echo "Папка не найдена"
fi
