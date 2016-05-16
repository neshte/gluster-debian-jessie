#! /bin/bash

service glusterfs-server start

mkdir -p /data
gluster volume create $GLUSTERVOLNAME $(hostname):/data force
gluster volume start $GLUSTERVOLNAME

tail -f /var/log/glusterfs/etc-glusterfs-glusterd.vol.log
