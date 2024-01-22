file_path="$1"
start_line="$2"
end_line="$3"

if [ ! -e "$file_path" ]; then
    echo "File khong ton tai."
    exit 1
fi

if ! [[ "$start_line" =~ ^[0-9]+$ ]] || ! [[ "$end_line" =~ ^[0-9]+$ ]]; then
    echo "Invalid line numbers."
    exit 1
fi

sed -n "${start_line},${end_line}p" "$file_path"
