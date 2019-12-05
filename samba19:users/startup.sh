#! /bin/bash
# startup.sh
# -------------------------------------

/opt/docker/install.sh && echo "Install Ok"
/usr/sbin/nslcd && echo "nslcd Ok"
/usr/sbin/nscd && echo "nscd Ok"
/usr/sbin/smbd && echo "smb Ok"
/opt/docker/smbusers.sh && echo "Smbusers OK"
/opt/docker/smbhomes.sh && echo "Smbhomes OK"
/usr/sbin/nmbd -F
