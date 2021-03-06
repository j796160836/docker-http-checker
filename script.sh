#!/usr/local/bin/bash

LOGFILE="/opt/log/log.log"

if [ -z $URL ]; then
	echo "Error: Please specify testing URL."
    exit -1
fi

if [ -z $INTERVAL ]; then
	INTERVAL="2"
fi

while true
do
	TIMESTAMP=`date "+%Y-%m-%d %H:%M:%S"`
	RESPONSE=$(curl --write-out %{http_code} --silent --output /dev/null $URL)
	echo "$TIMESTAMP $URL Response: $RESPONSE" | tee -a $LOGFILE
	sleep $INTERVAL
done