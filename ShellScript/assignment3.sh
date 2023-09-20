#! /bin/sh

result=0
for j in $(seq 1 $1)
do
	for i in $(seq 1 $2)
        do
                result=`expr $j \* $i`
                echo -n "$j * $i = $result \t"
        done

        echo " " 
done
