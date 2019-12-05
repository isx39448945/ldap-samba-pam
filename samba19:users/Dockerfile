# Samba
# -------------------------------------
FROM fedora:27
LABEL version="1.0"
LABEL author="@isx39448945 ASIX M06-ASO"
LABEL subject="SAMBA server"
RUN dnf -y install procps samba samba-client passwd pam_mount nfs-utils nss-pam-ldapd procps iproute nmap util-linux-user authconfig vim tree
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh /opt/docker/smbhomes.sh /opt/docker/smbusers.sh
WORKDIR /opt/docker
CMD /opt/docker/startup.sh
