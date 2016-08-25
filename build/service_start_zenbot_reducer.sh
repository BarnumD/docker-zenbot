#!/bin/bash
if [ "$REDUCER" = "Y" ]
then
  cd /usr/src/zenbot
  if [[ $REDUCEROPTS ]]
  then
    zenbot launch reduce $REDUCEROPTS
  else
    zenbot launch reduce
  fi
fi
sleep 9999
