#!/bin/sh

set -x

for i in $(ls *.yaml); do
	[ $(pgrep -c melange) -gt $(nproc) ] && sleep 1
	melange scan $i 2>&1 >scans/old/$i.scan &
done
