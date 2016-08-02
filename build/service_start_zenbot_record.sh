#!/bin/bash
if [ "$RECORD" = "Y" ]
then
  cd /usr/src/zenbot
  if [[ $RECORDOPTS ]]
  then
    zenbot record $RECORDOPTS
  else
    zenbot record
  fi
fi
sleep 9999
