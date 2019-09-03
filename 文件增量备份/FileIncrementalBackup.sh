#!/bin/bash
ipAddr=192.168.0.216
srcPath=/opt/upload
targetPath=/opt/ad_bak
rsync -avz $srcPath root@$ipAddr:$targetPath