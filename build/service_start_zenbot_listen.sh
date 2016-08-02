#!/bin/bash
if [ "$LISTEN" = "Y" ]
then
  cd /usr/src/zenbot
  if [[ $LISTENOPTS ]]
  then
    zenbot listen $LISTENOPTS
  else
    zenbot listen
  fi
fi
sleep 9999
