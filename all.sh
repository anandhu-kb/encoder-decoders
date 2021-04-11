#!/bin/bash
read -p "enter the word or hash : " wd
read -p "base64 encrypt ("1"); base64 decrypt ("2") for others ("3") : " wp



if (( $wp == 1))
then
        echo $wd | base64
elif (( $wp == 2 ))
then
        echo $wd | base64 -d
else
	
	read -p "base32 encrypt ("1") base32 decrypt ("2")  others("3"): " ot
fi

if (( $ot == 1))
then
	 
	echo $wd | base32
elif (( $ot == 2))
then
		 
		echo $wd | base32 -d
else
	read -p "md5 encrypt ("1") md5 decrypt ("2") others ("3") " md
fi

if (( $md == 1 ))
then
	 
	echo $md | md5sum
elif (( $md == 2 ))
then
	u=https://www.nitrxgen.net/md5db/$wd
	 
	curl $u
	echo ""
	echo ""
else
	
	echo "building...................."
fi
