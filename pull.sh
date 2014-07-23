#!/bin/sh
adb shell "rm /sdcard/so.tar; cd /data/local/tmp/sji-asc; ./busybox find / -type f -name '*.so' 2>/dev/null | ./busybox xargs ./busybox tar -cvf /sdcard/so.tar"
adb pull /sdcard/so.tar
tar -xvf so.tar
