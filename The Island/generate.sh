#!/bin/sh

output_file=The_Island.txt
generation_date=`date`

if [ -f $output_file ];
then 
	echo Removing existing $output_file file
	rm $output_file
fi	
echo 
echo "Generation date: $generation_date\r\n" >> $output_file
echo "-------------------------------------------------------------" >> $output_file

if [ -f header ];
then
	echo "Process header"
	cat header >> $output_file
fi

for file in Chapitres/Chap* 
do
	echo "Process file $file"
	cat "$file" >> $output_file
	echo "\r\n\r\n\r\n\t\t* * *\r\n\r\n\r\n" >> $output_file
done;


if [ -f Notes ];
then
	echo "Process Notes"
	cat Notes >> $output_file
fi


if [ -f footer ];
then
	echo "Process footer"
	cat footer >> $output_file
fi

echo
echo Finished generating $output_file.