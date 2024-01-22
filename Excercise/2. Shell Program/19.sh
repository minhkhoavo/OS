if [ ! -d "SYS" ]; then
    mkdir "SYS"
    echo "SYS directory created."
fi

# Sao chép tất cả các tập tin có tháng tạo lập là 7 vào thư mục SYS
for file in *; do
    if [ -f "$file" ]; then
        month=$(stat -c "%y" "$file" | cut -d'-' -f2)
        if [ "$month" -eq 7 ]; then
            cp "$file" "SYS/"
            echo "Copied $file to SYS/"
        fi
    fi
done
