base:
#  '*':
#    - common

# for general servers
  'minion[34]':
      - system.issue
      - system.hosts
      - system.sshd
      - system.inittab
      - users.alluser
      - nagios
      - zabbix
      - yumrepo.default

# for web servers
  'minion3':
      - system.sysctl.web

# for db servers
  'minion4':
      - users.dbuser
      - system.sysctl.db
      - mysql

#  'os:Centos':
#      - match: grain
#      - centos
