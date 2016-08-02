#!/bin/bash
if [ "$LEARN" = "Y" ]
then
  cd /usr/src/zenbot
  if [[ $LEARNOPTS ]]
  then
    zenbot learn $LEARNOPTS
  else
    zenbot learn
  fi
fi
sleep 9999
