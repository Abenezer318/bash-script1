read -p "enter name of the file to check; " filename
if [ -f "filename" ]; then
echo the file $filname exists
else
echo the file $filename not exists
fi
