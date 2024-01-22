if [ "$#" -lt 3 ]; then
    echo "Usage: $0 directory month day"
    exit 1
fi

directory="$1"
month="$2"
day="$3"

if [ ! -d "$directory" ]; then
    echo "Duong dan khong ton tai. Exiting."
    exit 1
fi

echo "------------------------------------------------"
echo "Files co quyen Read and Excute: $directory:"
find "$directory" -type f -perm -g=rx -exec ls -l {} \;

echo "------------------------------------------------"
echo "File tao ngay $day thang $month trong $directory:"
find "$directory" -maxdepth 1 -type f -newermt "$month $day" ! -newermt "$month $((day+1))" -exec ls -l --time=creation {} \;

echo "------------------------------------------------"
echo "File >= 500KB in $directory:"
find "$directory" -type f -size +500k -exec ls -l {} \;

echo "------------------------------------------------"
echo "Thu muc con khong co quyen ghi voi nguoi dung hien tai $directory:"
find "$directory" -maxdepth 1 -type d ! -writable -exec ls -ld {} \;
