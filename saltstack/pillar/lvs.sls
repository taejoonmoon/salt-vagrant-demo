lvs:
  exmaple.net:
    service_address: '192.168.50.50:80'
    enabled: 'on'
    real_server:
      192.168.50.13:
        port: 80
        enabled: 'on'
      192.168.50.14:
        port: 80
        enabled: 'off'
  exmaple2.net:
    service_address: '192.168.50.60:80'
    enabled: 'on'
    real_server:
      192.168.50.13:
        port: 80
        enabled: 'off'
      192.168.50.14:
        port: 80
        enabled: 'on'
