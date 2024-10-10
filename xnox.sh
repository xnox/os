#!/bin/sh
set -x
ls *.yaml | xargs --replace={} --max-lines=1 --max-procs=$(nproc) sh -c 'melange scan {} >scans/old/$i.scan 2>&1'
