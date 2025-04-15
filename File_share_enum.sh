#!/bin/bash
while read share; do
 echo " checking: $share"
 smbclient //target.ine.local/"$share" -N -c "ls" 2>&1 | tee -a smb_results.txt
 echo "--------------------------------"
done < shares.txt
