files=($(ls -lt backup_minio* | awk '{print $9}'))

# Check if there are any files
if [ ${#files[@]} -eq 0 ]; then
    echo "No files found."
    exit 1
fi

# Display the list of files with their numbers
echo "Choose a file:"
for ((i=0; i<${#files[@]}; i++)); do
    echo "$i: ${files[i]}"
done

# Read the selected file number
read -p "Enter the file number: " file_number

# Check the validity of the file number
if ! [[ "$file_number" =~ ^[0-9]+$ ]] || [ $file_number -ge ${#files[@]} ]; then
    echo "Invalid file number."
    exit 1
fi

# Use the selected file
selected_file="${files[file_number]}"
echo "Selected file: $selected_file"
