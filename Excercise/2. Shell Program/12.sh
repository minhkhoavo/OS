file_path="$1"

if [ -e "$file_path" ]; then
    echo "File ton tai"
else
    echo "File khong ton tai."
    exit 1
fi

absolute_path=$(realpath "$file_path")

echo "File path: $absolute_path"
