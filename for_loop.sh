#! /bin/bash
#for loop
for ((i = 0 ; i < 10 ; i++)); do
  echo $i
done


users="Linux, Window, Mac"

for user in ${users}
do
    echo "${user}"
done
    
