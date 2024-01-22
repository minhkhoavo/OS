number1=$1
number2=$2
number3=$3

max=$number1

if [ $number2 -gt $max ]; then
    max=$number2
fi

if [ $number3 -gt $max ]; then
    max=$number3
fi

echo $max