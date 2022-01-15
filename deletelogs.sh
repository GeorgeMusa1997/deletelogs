#!/bin/bash
pathname1='/u01/app/oracle/diag/rdbms/ecc/ecc/trace'
pathname2='/u01/app/oracle/admin/ecc/adump'
# Check the path is exists or not
if [ -d "$pathname1" ]; then
   cd "$pathname1"
   ls -lhA | awk -F " " '{print $9}' | xargs -L 1 rm -rf
   echo "Inside $pathname1 are removed"
else
   echo "$pathname1 path not found."
fi
if [ -d "$pathname2" ]; then
    cd "$pathname2"
    ls -lhA | awk -F " " '{print $9}' | xargs -L 1 rm -rf
    echo "Inside $pathname2 are removed"
else
   echo "$pathname2 path not found."
fi
