is_prime() {
    local num=$1
    if [ "$num" -lt 2 ]; then
        return 1
    fi
    for ((i=2; i*i<=num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            return 1
        fi
    done
    return 0
}

max_number=$1

for ((num=2; num<=max_number; num++)); do
    if is_prime "$num"; then
        echo "$num"
    fi
done
