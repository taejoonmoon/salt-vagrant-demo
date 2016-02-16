template:
  lookup:
    master: template-master
    #pkg: lynx
#    config: /etc/template.centos.conf

myuser:
  - auser
  - buser

php_ini:
  PHP:
    engine: 'On'
    short_open_tag:  'OFF'
  PHP2:
    engine: 'off'
    short_open_tag:  'OFF'
