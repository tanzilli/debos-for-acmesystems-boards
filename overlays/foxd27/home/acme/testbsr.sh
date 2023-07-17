#!/bin/bash

echo Test RoadRunner in BSR -Suspend To RAM-
sudo mem2io -w -i fc040018,300
echo How many seconds in BSR ?
read secondi
sudo /sbin/rtcwake -m mem -s $secondi
echo "Halt? (enter halts; any other key + enter stops and go to prompt)"
read haltvalue
if [[ $haltvalue == '' ]] 
then 
  echo " test OK! now halt!"
  sudo halt
fi
  echo "test OK! now prompt to user!"
