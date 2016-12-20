function try {
    # echo "here"
    # echo "this: $0"
    # echo "this: $1"
    # echo "this: $2"
    # echo "that: $#"
    # echo "this: $@"
    # output=$($@)
    # echo "output is: " $output

    output=$("$@")
    echo "output is: " $output

    # echo "output :" $($@)

    "$@"
    status=$?
    echo "status"
    echo $status
    if [ $status -ne 0 ]; then
        echo "Error occurred with $1. Exiting."
        exit $status
    fi
}

for VARIABLE in 1
do
    try ansible-playbook play3.yml
done

# echo ${out}
