#! /bin/sh

validate(){
	if [ -z $1 ] || [ -z $2 ] ; then
		echo "Invalid Input"
		exit 0
	fi

	if [ $1 -lt 1 ] || [ $2 -lt 1 ] ; then
		echo "Input must be greater than 0"
		exit 0
	fi
}

calc() {
	validate $1 $2

	result=0
	for j in $(seq 1 $1)
	do
		for i in $(seq 1 $2)
        	do
                	result=`expr $j \* $i`
                	echo -n "$j*$i=$result \t"
       		done

       		echo " " 
	done
}

calc $1 $2
