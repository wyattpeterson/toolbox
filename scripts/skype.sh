#!/bin/bash

sender_name=$1
message=$2

echo $2 | grep -qi -E "wyatt|@all|tiger|hadoop|sqoop|hive|impala|jobtracker|slime|python|food|coffee|etl" 


if [[ $? == 0 ]];
then
    notify-send -t 999999999 -i skype "($(date +%H:%M:%S)) $1" "$2 $3 $4 $5 $6 $7"
fi
