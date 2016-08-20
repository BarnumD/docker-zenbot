#!/bin/bash
if [ "$RUN" = "Y" ]
then
  cd /usr/src/zenbot
  if [[ $RUNOPTS ]]
  then
    echo "run with opts"
    #zenbot run $RUNOPTS
  else
    #zenbot run --trade
    zenbot launch map reduce run server
  fi
fi
sleep 9999
