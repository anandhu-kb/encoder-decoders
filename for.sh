#!/bin/bash

for (( i = 0; i < 100; i++ )); do
	echo "{\"uid\":14,\"admin\":false}" | base64 
done