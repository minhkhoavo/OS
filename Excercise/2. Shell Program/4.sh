number=$1
sum=0

while [ $number -gt 0 ]; do
    digit=$((number % 10))
    sum=$((sum + digit))
    number=$((number / 10))
done

echo $sum
