#!/bin/sh
set -x
ls *.yaml | xargs --replace={} --max-procs=$(nproc) sh -c 'melange scan {} >scans/{}.scan 2>/dev/null'
