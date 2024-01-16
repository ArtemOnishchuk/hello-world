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
