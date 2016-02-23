base:
  # for general servers
  '*':
#    - template
#    - common
    - system.issue
    - system.hosts.prod
    - system.sshd
    - system.inittab
    - system.securetty
    - system.ldap
    - users.alluser
    - nagios.nrpe
    - zabbix.agent
    - yumrepo.default
    - system.profile
    - system.pam
    - users

#  'minion[34]':

  # for web servers
  'minion3':
      - system.sysctl.web
      - mysql

  # for db servers
  'minion4':
      - users.dbuser
      - system.sysctl.db
      - mysql

  'nagios-server':
      - nagios.server
      - mysql.nagios

  'zabbix-server':
      - zabbix.server
      - mysql.zabbix

#  'os:Centos':
#      - match: grain
#      - centos
