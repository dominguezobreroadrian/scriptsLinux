#!/bin/bash

num=1

while test $num -le 5
do
	touch curso$num
	num=`expr $num + 1`
done
