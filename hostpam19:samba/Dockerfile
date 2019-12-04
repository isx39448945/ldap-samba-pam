# hostpam
FROM fedora:27
LABEL version="1.0"
LABEL author="@isx39448945 ASIX-M06"
LABEL subject="hostpam"
RUN dnf -y install vim procps passwd pam_mount nfs-utils nss-pam-ldapd openldap-clients authconfig cifs-utils
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
