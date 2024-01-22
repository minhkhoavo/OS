find_gcd() {
    local a=$1
    local b=$2

    while [ $b -ne 0 ]; do
        local temp=$b
        b=$((a % b))
        a=$temp
    done
    echo $a
}

find_gcd_array() {
    local arr=("$@")
    local n=${#arr[@]}

    if [ $n -lt 2 ]; then
        echo "Mang phai co it nhat 2 phan tu"
        return 1
    fi

    local result=${arr[0]}
    for ((i=1; i<n; i++)); do
        result=$(find_gcd "$result" "${arr[i]}")
    done

    echo $result
}

numbers=("$@")
find_gcd_array "${numbers[@]}"
