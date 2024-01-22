source_dir="/usr/log/tmp"
backup_dir="/backup"
threshold_size_mb=100

# Kiểm tra xem thư mục có tồn tại hay không
if [ ! -d "$source_dir" ]; then
    echo "Thu muc khong ton tai."
    exit 1
fi

# Lấy kích thước thư mục /usr/log/tmp
dir_size=$(du -s -m "$source_dir" | cut -f1)

# Kiểm tra kích thước có lớn hơn 100MB không
if [ "$dir_size" -gt "$threshold_size_mb" ]; then
    # Kiểm tra xem thư mục /backup có tồn tại hay không
    if [ ! -d "$backup_dir" ]; then
        mkdir "$backup_dir"
        echo "Backup directory created."
    fi
