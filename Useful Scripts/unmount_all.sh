#!/bin/bash

# This script will unmount all the mounted cephfs drives on the loadgen servers

salt 'sr650*' cmd.run 'umount /mnt/cephfs'

salt 'sr630-1*' cmd.run 'umount /mnt/cephfs'