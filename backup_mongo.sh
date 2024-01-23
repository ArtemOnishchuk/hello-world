#!/bin/bash

# Проверка наличия аргумента
if [ -z "$1" ]; then
  echo "Usage: $0 [date]"
  exit 1
fi

target_folder="$1"

# Проверка существования папки
if [ -d "$target_folder" ]; then
  echo "Folder $target_folder exists."
else
  echo "Folder $target_folder not found."
  echo "Existing folders:"
  existing_folders=($(ls -d [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9] 2>/dev/null))
  if [ ${#existing_folders[@]} -eq 0 ]; then
    echo "No existing folders found."
  else
    for folder in "${existing_folders[@]}"; do
      echo "$folder"
    done
  fi
fi

#!/bin/bash

# Введите вашу переменную
read -p "Введите значение переменной: " userInput

# Проверка, является ли введенное значение числом
if [[ $userInput =~ ^[0-9]+$ ]]; then
    # Проверка, является ли число положительным и не превышает 200
    if ((userInput > 0 && userInput <= 200)); then
        echo "Введенное значение ($userInput) является положительным числом и не превышает 200."
    else
        echo "Ошибка: Введенное значение не соответствует условиям (положительное число, не превышающее 200)."
    fi
else
    echo "Ошибка: Введенное значение не является числом."
fi
