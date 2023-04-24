FILE_PATH="/path/to/my_file.txt"

if [ -f "${FILE_PATH}" ]; then
    echo "File exists. Editing..."
    echo "New content" > "${FILE_PATH}"
    echo "Edit complete."
else
    echo "File does not exist. Creating..."
    echo "Initial content" > "${FILE_PATH}"
    echo "File created."
fi

sleep 5s

if [ -f "${FILE_PATH}" ]; then
    echo "File exists. Deleting..."
    rm "${FILE_PATH}"
    echo "File deleted."
else
    echo "File does not exist."
fi