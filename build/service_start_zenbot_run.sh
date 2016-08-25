#!/bin/bash
if [ "$RUN" = "Y" ]
then
  cd /usr/src/zenbot
  if [[ $RUNOPTS ]]
  then
    echo "run with opts"
    zenbot launch $RUNOPTS
  else
    zenbot launch map --backfill run --rs btc_usd
  fi
fi
sleep 9999
