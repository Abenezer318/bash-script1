#!/bin/bash

echo "///////////////Welcome to my bash///////////////"
echo "Enter 1 to see your Home "
echo "Enter 2 to manage memory "
echo "Enter 3 to manage services"
echo "Enter 4  to see the CPU detail"
read -p "Enter your choise:" enter
case "$enter" in
1)
cd ~
ls
echo "Enter the file you want to open:"
read -p "file name:" file1
if [ -d "$file1" ]; then
echo "list of" $file1
cd $file1
ls
else
echo "There is no file" $file
fi
;;
2)
free -h
;;
3)
read -p "Enter service type: " service
echo "Enter g to start service: " $service
echo "Enter q to stop service: " $service
read -p "Enter your choice: " run
case "$run" in
g)
sudo systemctl start $service
echo "your service has been started started"
;;
q)
sudo systemctl stop $service
echo "your service is terminated"
;;
*)
echo "invalid input"
;;
esac
;;
4)
top
;;
*)
echo "invalid input"
;;
esac
