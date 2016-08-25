#!/bin/bash
if [ "$SERVER" = "Y" ]
then
  cd /usr/src/zenbot
  if [[ $SERVEROPTS ]]
  then
    zenbot launch server $SERVEROPTS
  else
    zenbot launch server
  fi
fi
sleep 9999
