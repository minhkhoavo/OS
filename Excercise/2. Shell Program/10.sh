echo "Enter full name:"
read full_name

first_name=$(echo "$full_name" | awk '{print $NF}')

uppercase_name=$(echo "$first_name" | tr '[:lower:]' '[:upper:]')

echo "Full name: $full_name"
echo "Uppercase First name: $uppercase_name"
