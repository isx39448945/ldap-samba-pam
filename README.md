# ldap-samba-pam

Creació d'un servidor SAMBA capaç de connectar a un servidor LDAP i exportar directoris HOME d'usuaris locals i LDAP. Per a això necessitem un servidor LDAP, un servidor SAMBA i un client amb LDAP i PAM configurats.

Per implementar un host amb usuaris unix i ldap on els homes dels usuaris es muntin via samba de un servidor de disc extern cal:

+ ldapnet: xarxa propia per als containers
+ adrinarvaez/ldapserver19:samba: servidor ldap en funcionament amb els usuaris de xarxa
+ adrinarvaez/samba19:pam: servidor SAMBA capaç de connectar a un servidor LDAP i exportar directoris HOME d'usuaris locals i LDAP.
+ adrinarvaez/hostpam19:samba: host pam amb authenticació ldap. Monta els home dels usuaris samba (cifs) dintre del home de la maquina.

