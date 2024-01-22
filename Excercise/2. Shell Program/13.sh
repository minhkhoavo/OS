if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file_path>"
    exit 1
fi

file_path="$1"

# Kiểm tra xem tập tin có tồn tại hay không
if [ ! -e "$file_path" ]; then
    echo "File does not exist."
    exit 1
fi

group_permissions=$(stat -c "%A" "$file_path" | cut -c6-8)

echo "$file_path: $group_permissions"

