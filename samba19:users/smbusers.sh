#! /bin/bash
# creació dels usuaris

#users unix locals
usersunix="local1 local2 local3"
for userunix in $usersunix
do
  useradd $userunix
  echo "$userunix" | passwd --stdin $userunix
done

#users samba locals
userssamba="lila roc pla patipla"
for usersamba in $userssamba
do
  useradd $usersamba
  echo -e "$usersamba\n$usersamba" | smbpasswd -a $usersamba
done

#users ldap
usersldap="pere marta anna pau jordi"
for userldap in $usersldap
do
  echo -e "$userldap\n$userldap" | smbpasswd -a $userldap
done  
