#!/bin/bash
if [ "$RUN" = "Y" ]
then
  cd /usr/src/zenbot
  if [[ $RUNOPTS ]]
  then
    zenbot run $RUNOPTS
  else
    zenbot run --trade
  fi
fi
sleep 9999
