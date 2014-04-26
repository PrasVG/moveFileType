#/bin/bash
echo -e " Enter the name of the directory you want to store the files in."
read Directory
echo "Creating destination directory in current folder. Its path is.. $PWD/$Directory"
mkdir $Directory
echo "Enter the file type you wish to move to the destination $Directory"
read fileType
for file in *.$fileType
do	
		cp $file $PWD/$Directory
		echo "Copied $file to $Directory."
		echo -n
		rm $file
		echo "Deleted $file from current directory."
done
