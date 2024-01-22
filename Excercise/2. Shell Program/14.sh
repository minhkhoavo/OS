
file_path="$1"
search_string="$2"

if [ ! -e "$file_path" ]; then
    echo "File khong ton tai."
    exit 1
fi

echo "In dong chan o dang in hoa:"
awk 'NR % 2 == 0 { print toupper($0) }' "$file_path"

matching_lines=$(grep -c "$search_string" "$file_path")
echo "Cac dong chua '$search_string':"
grep "$search_string" "$file_path"
echo "Tong so ket qua '$search_string': $matching_lines"
