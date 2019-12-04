#! /bin/bash
# creació dels usuaris

#users samba local
users="lila roc pla patipla"
for user in $users
do
  useradd $user
  echo -e "$user\n$user" | smbpasswd -a $user
done

#users samba/unixldap
usersldap="pere marta anna pau jordi"
for userldap in $usersldap
do
  echo -e "$userldap\n$userldap" | smbpasswd -a $userldap
done  
