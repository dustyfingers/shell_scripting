#!/bin/bash

# todo: upload this to server over ftp/sftp
echo "Hello World!"
echo "Hi!"

# any command you can write in the shell, you can write here
# cd .. && cd .. && ls
# top
# touch hello.txt

# how to implement a function in a shell script
my_function() {
    echo "hello from my_function"
}

# no parens when calling functions in shell scripts
my_function

# how to handle params then? 

# like this! weird i know :o
print() {
    echo $1
}

print "tim is great"

# variables - no spaces or exclamation points
# NO SPACES AROUND THE EQUALS SIGN
foo=6
bar=500

echo $foo $bar


# if/elif/else statements
# the spacing here has to be exact!!
control() {
    if [[ $1 = "Tim" ]]; then
        echo "Tim is first argument"

    elif [[ $1 = "Joe" ]]; then
        echo "Joe is the first argument"
    else 
        echo "Who cares what the first argument is?"

    # fi goes at end of conditional block. weird innit?
    fi

    if [[ $2 = "Bill" ]]; then
        echo "Bill is first argument"
    fi
}

control "Tim" "Allen"
control "Joe" "Bill"
control "Alex" "Allen"

# best practice to end with exit code 0 if success
exit 0