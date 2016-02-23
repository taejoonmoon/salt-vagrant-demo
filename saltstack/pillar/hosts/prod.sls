myhost: 211.111.121.111
logserver:
  ip: 111.111.121.122
  domain: logserver.example.com
yumserver:
  ip: 111.111.121.122
  domain: yum.example.com

hosts:
  mytest-host-a:
    ip: '10.10.10.10'
  mytest-host-b:
    ip: '10.10.10.11'

include:
  - hosts.dev
