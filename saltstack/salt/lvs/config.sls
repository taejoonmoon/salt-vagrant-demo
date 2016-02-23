# -*- coding: utf-8 -*-
# vim: ft=sls

lvs_service:
  lvs_service.present:
    - service_address: 192.168.50.50:80
    #- service_address: example.net:80
    - protocol: tcp
    - scheduler: rr

lvs_server_1:
  lvs_server.present:
    - protocol: tcp
    - service_address: 192.168.50.50:80
    #- service_address: example.net:80
    - server_address: 192.168.50.13:80
    - packet_forward_method: dr
    - weight: 10

lvsrs_2:
  lvs_server.present:
    - protocol: tcp
    - service_address: 192.168.50.50:80
    #- service_address: example.net:80
    - server_address: 192.168.50.14:80
    - packet_forward_method: dr
    - weight: 10

#lvs_server_2:
#  lvs_server.absent:
#    - protocol: tcp
#    - service_address: 192.168.50.50:80
#    - server_address: 192.168.50.14:80
