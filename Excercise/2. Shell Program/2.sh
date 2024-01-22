
number1=$1
toantu=$2
number2=$3

case $toantu in
    +) result=$((number1 + number2));;
    -) result=$((number1 - number2));;
    x) result=$((number1 * number2));;
    /) result=$((number1 / number2));;
    *) echo "Loi: $toantu"; exit 1;;
esac

echo "$number1 $toantu $number2 = $result"
