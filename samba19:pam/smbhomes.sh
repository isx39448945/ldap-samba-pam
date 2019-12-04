#! /bin/bash
# Creació dels homes
# -------------------------------------

users="pere marta anna pau jordi"

for user in $users
do
  line=$(getent passwd $user)
  uid=$(echo $line | cut -d':' -f3)
  gid=$(echo $line | cut -d':' -f4)
  homedir=$(echo $line | cut -d':' -f6)
  if [ ! -d $homedir ]; then
    mkdir -p $homedir
    cp /opt/docker/README.md $homedir/.
    chown $uid.$gid $homedir
  fi
done
