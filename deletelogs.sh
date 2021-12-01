#!/bin/bash
pathname1='/u01/app/oracle/diag/rdbms/*/'
pathname2='/u01/app/oracle/admin/*/adump'
# Check the path is exists or not
if [ -d "$pathname1" ]; then
#   rm -rf "$pathname1"/*
   cd "$pathname1"
   ls -lhA | awk -F " " '{print $9}' | sudo xargs -L 1 rm -rf
   echo " Inside $pathname1 are removed"
fi
