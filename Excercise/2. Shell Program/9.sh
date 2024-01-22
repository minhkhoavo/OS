echo "Nhap chuoi:"
read input_string
IFS=' '
words=($input_string)
word_count=${#words[@]}

echo "So tu: $word_count"
for word in "${words[@]}"; do
    echo "$word"
done
