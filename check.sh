#!/bin/sh

base64 /dev/urandom | head -c 511 > input.txt

./otp  -i input.txt -o output.txt -x 4212 -a 84589 -c 45989 -m 217728 && ./otp  -i output.txt -o input2.txt -x 4212 -a 84589 -c 45989 -m 217728

if cmp -s input.txt input2.txt; then
    printf 'SUCCESS\n'
	echo 'SUCCESS\n' > result.txt
else
    printf 'FAIL\n'
	
fi


