group_name="$1"

if ! getent group "$group_name" > /dev/null 2>&1; then
    echo "Nhom khong ton tai."
    exit 1
fi

# Lấy danh sách người dùng trong nhóm và sắp xếp theo thứ tự abc
user_list=$(getent group "$group_name" | cut -d: -f4 | tr ',' '\n' | sort)

# In ra danh sách người dùng
echo "Users in group $group_name (sorted alphabetically):"
echo "$user_list"
