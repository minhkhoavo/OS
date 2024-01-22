file_path="$1"

if [ ! -e "$file_path" ]; then
    echo "File khong ton tai."
    exit 1
fi

group_permissions=$(stat -c "%G %a" "$file_path")

echo "$file_path: $group_permissions"
