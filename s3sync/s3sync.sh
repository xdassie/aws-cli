#!/bin/sh
AWS_ACCESS_KEY_ID=$(aws configure get my_profile.aws_access_key_id)
AWS_SECRET_ACCESS_KEY=$(aws configure get my_profile.aws_secret_access_key)
export AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY
mkdir -p /encrypted 
mkdir -p /tmp/clear 
s3fs -d -o endpoint="af-south-1" -o url="https://s3.af-south-1.amazonaws.com" "$BUCKET:/$BUCKETPATH" /encrypted && encfs /encrypted /tmp/clear
while true; do echo "syncing encrytped filesystem with s3"; rsync -a --progress /source /tmp/clear/bak_$BACKUPNAME/; sleep 60; done;
