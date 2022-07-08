#!/bin/bash                                                                                                                                                                                            
CWD=`echo $(dirname $(readlink -f $0))`
cd $CWD

export EKM_KEY="ODQwMzczOjE2NzMwMw"
export EKM_DEVICE="11996"

exec ./run-ekm-docker.sh $@
