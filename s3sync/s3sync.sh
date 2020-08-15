#!/bin/sh
AWS_ACCESS_KEY_ID=$(aws configure get my_profile.aws_access_key_id)
AWS_SECRET_ACCESS_KEY=$(aws configure get my_profile.aws_secret_access_key)
export AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY
s3fs -o endpoint="af-south-1" -o url="https://s3.af-south-1.amazonaws.com" "$BUCKET:/$BUCKETPATH" /encrypted
encfs /encrypted /clear
while true; do echo "syncing encrytped filesystem with s3"; sleep 60; done;
