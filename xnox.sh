#!/bin/sh

set -x

for i in $(ls *.yaml); do
	[ $(pgrep -c melange) -gt $(nproc) ] && sleep 1
	melange scan $i &> scans/new/$i.scan &
done
