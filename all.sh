#!/bin/bash
#all.1.sh
read -p "hashes : " a
read -p "base64 encrypt ("1"); base64 decrypt ("2") for others ("3")  " b

if (( $b == 1 ))
then
	echo $a | base64
	echo ""
elif (( $b == 2 ))
then
	echo $a | base64 -d
	echo ""
else
	read -p "base32 encrypt ("4") base32 decrypt ("5")  others("6")  " c

if (( $c == 4))
then
	echo $a | base32
elif (( $c == 5 ))
then
	echo $a | base32 -d
	echo ""
else
	read -p "md5 encrypt ("7") md5 decrypt ("8") others ("9") " d
if (( $d == 7 ))
then
	echo -n $a | md5sum
	echo ""
elif (( $d == 8 ))
then
	u=https://www.nitrxgen.net/md5db/$a
	echo "" 
	curl $u
	echo ""
	echo ""
else
	echo "over"
fi
fi
fi
