sort_array() {
    local array=("$@")
    local n=${#array[@]}

    for ((i = 0; i < n-1; i++)); do
        for ((j = 0; j < n-i-1; j++)); do
            if [ ${array[j]} -gt ${array[j+1]} ]; then
                temp=${array[j]}
                array[j]=${array[j+1]}
                array[j+1]=$temp
            fi
        done
    done

    echo "${array[@]}"
}

input_array=("$@")
sorted_array=($(sort_array "${input_array[@]}"))

echo ${sorted_array[@]}
