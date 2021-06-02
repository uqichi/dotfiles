#!/bin/sh

# how to use
# terraform state list | grep _new | ./tf-rm.sh

if [ -p /dev/stdin ]; then
    cat - | while read line
    do
        terraform state rm $line
    done
else
    echo $@
fi
