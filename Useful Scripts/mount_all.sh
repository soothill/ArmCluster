#!/bin/bash

# This script will mount all the mounted cephfs drives on the loadgen servers

salt 'sr650*' cmd.run 'mount -o nocrc,noatime,nodiratime,noacl -t ceph 172.16.227.61:/ /mnt/cephfs -o name=admin,secret=AQDCMOJeAAAAABAAvUh4JRszXo6HzDZXBGkZLQ=='

salt 'sr630-1*' cmd.run 'mount -o nocrc,noatime,nodiratime,noacl -t ceph 172.16.227.61:/ /mnt/cephfs -o name=admin,secret=AQDCMOJeAAAAABAAvUh4JRszXo6HzDZXBGkZLQ=='