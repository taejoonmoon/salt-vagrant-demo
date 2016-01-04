install httpd:
  pkg.installed:
    - name: httpd
  service.running:
    - name: httpd
    - enable: true

restart httpd:
  module.run:
    - name: service.restart
    - m_name: httpd

https://github.com/saltstack/salt.git:
  pkg.installed:
    - name: git
  git.latest:
    - name: https://github.com/saltstack/salt.git
    - rev: develop
    - target: /tmp/salt

test user:
  user.present:
    - name: test
    - shell: /bin/bash
    - home: /home/test

myserver in hosts file:
  host.present:
    - name: myserver
    - ip: 192.168.0.42

master in hosts file:
  host.present:
    - name: master
    - ip: 192.168.50.10
