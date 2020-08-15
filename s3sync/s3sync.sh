#!/bin/sh
AWS_ACCESS_KEY_ID=$(aws configure get my_profile.aws_access_key_id)
AWS_SECRET_ACCESS_KEY=$(aws configure get my_profile.aws_secret_access_key)
export AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY
mkdir -p /encrypted
s3fs "$BUCKET:/$BUCKETPATH" /encrypted
encfs -o password /encrypted /clear
