file_path="$1"

if [ ! -e "$file_path" ]; then
    echo "File khong ton tai."
    exit 1
fi

line_count=$(wc -l < "$file_path")
word_count=$(wc -w < "$file_path")

longest_line=$(awk '{ if (length > max) { max = length; longest_line = $0 } } END { print longest_line }' "$file_path")

echo "So dong $file_path: $line_count"
echo "So tu $file_path: $word_count"
echo "Dong dai nhat $file_path: $longest_line"
