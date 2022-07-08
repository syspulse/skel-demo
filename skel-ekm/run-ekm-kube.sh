#!/bin/bash                                                                                                                                                                                            
CWD=`echo $(dirname $(readlink -f $0))`
cd $CWD

DOCKER=syspulse/skel-ekm:latest

EKM_KEY="ODQwMzczOjE2NzMwMw"
EKM_DEVICE="11996"

INFLUX_URI="http://192.168.1.245:8086"

LOG_FILE="/tmp/ekm-{yyyy-MM-dd-HH-mm}.log"

docker run --rm --name ekm -p 8080:8080 $DOCKER --ekm-key $EKM_KEY --ekm-device=$EKM_DEVICE --influx-uri $INFLUX_URI --log-file ${LOG_FILE} $@
