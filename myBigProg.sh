#!/bin/bash
while true
do
echo "what do you need to do?"
echo "Enter 1 if you want make bash script"
echo "Enter 2 if you want make normal file"
echo "Enter 3 if you want make a new directory"
echo "Enter 4 if you want to exit"

read input

case $input in
	1)echo "How many files do you want?"
		read count
		while [ $count -gt 0 ]
		do
			echo "What is the name of the file?"
			read fileName
			touch $fileName
			chmod +x $fileName
			echo "#!/bin/bash" > $fileName
			echo "Bash File $fileName is created successfully"
			count=$(($count-1))
		done
		;;
	2)echo "How many files do you want?"
		read count
		while [ $count -gt 0 ]
		do
			echo "What is the file name?"
			read fileName
			touch $fileName
			echo "File $fileName is created successfully"
			count=$(($count-1))
		done
		;;
	3)echo "How many directories do you want?"
		read count
		while [ $count -gt 0 ]
		do
			echo "Please enter directory name"
			read dirName
			mkdir $dirName
			echo "Directory $dirName is created successfully"
			count=$(($count-1))
		done
		;;
	4)exit;;
	*)echo "Please enter one of the options";;
esac
done
