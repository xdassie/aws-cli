export AWSACCESSKEYID=${AWSACCESSKEYID:-$AWS_ACCESS_KEY_ID}
export AWSSECRETACCESSKEY=${AWSSECRETACCESSKEY:-$AWS_SECRET_ACCESS_KEY}
/usr/bin/s3fs ${S3_BUCKET} ${MOUNT_POINT} -o nosuid,nonempty,nodev,allow_other,default_acl=${S3_ACL},retries=5
