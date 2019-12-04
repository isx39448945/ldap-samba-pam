#! /bin/bash
# Creació dels homes
# -------------------------------------

users="pere marta anna pau jordi"

for user in $users
do
  mkdir -p /tmp/home/$user
  cp /opt/docker/README.md /tmp/home/$user
  chown -R $user.$user /tmp/home/$user
done


