#!/bin/bash
#var=$(nc -l -p 1337)
receive() {
	#request="$(nc -l -p 2020)"
	#echo Received String from Client: $request

	nc -l -p 2020 > out.txt	
	cat out.txt
}

send() {
	#echo -n $request | nc -c 10.0.2.15 2022
	echo -n "Received" | nc -c 10.0.2.15 2022
}


while true;
do
	receive	
	send
done