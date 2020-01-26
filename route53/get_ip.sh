RPI_EXT_IP=$(ip addr list enp2s0 |grep "inet " |cut -d' ' -f6|cut -d/ -f1)

cat > /tmp/r53-update.json << __EOF__
  {
    "Changes": [
      {
        "Action": "UPSERT",
        "ResourceRecordSet": {
          "Name": "littlebigbox.xdassie2.name",
          "Type": "A",
          "TTL": 600,
          "ResourceRecords": [
            {
              "Value": "${RPI_EXT_IP}"
            }
          ]
        }
      }
    ]
  }
__EOF__
