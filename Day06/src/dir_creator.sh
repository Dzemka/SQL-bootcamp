if [[ $# -ne 1 ]]; then
    echo "Need 1 argument"
    exit
fi

for (( i = 0; i <= $1; i++ )); do
    if [[ $i -le 9 ]]; then
        filename="ex0$i"
    else
        filename="ex$i"
    fi
    mkdir "$filename"
done