#!/bin/bash

# This script will initiate a compaction of the OSD databases.

# When a large amount of data has been deleted then consideration should be given for running this script.

export CEPH_DEV=1

/usr/bin/ceph osd ls | xargs -rn1 -I '{}' /usr/bin/ceph tell osd.'{}' compact
/usr/bin/ceph mon compact