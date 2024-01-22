file_path="$1"

if [ ! -e "$file_path" ]; then
    echo "File khong ton tai."
    exit 1
fi

sed -i 's/ \{2,\}/ /g' "$file_path"

echo "Da hoan thanh sua doi."
