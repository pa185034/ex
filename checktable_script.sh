#!/bin/bash

cmd='cnsrun -prompt "Enter a command" -utility checktable -commands "{output over '"$1"';} {'"$2"';} {quit;}"'


#echo "Executing command: ""$cmd"

eval $cmd
