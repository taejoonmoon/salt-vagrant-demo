lvs:
  exmaple.net:
    service_address: '192.168.50.50:80'
    enabled: 'on'
    real_server:
      - 192.168.50.13:80
      - 192.168.50.14:80
  exmaple2.net:
    service_address: '192.168.50.60:80'
    enabled: 'off'
    real_server:
      - 192.168.50.13:80
      - 192.168.50.14:80
      - 192.168.50.15:80
