# -*- coding: utf-8 -*-
# vim: ft=sls

eth1_1:
  network.managed:
    - name: "eth1:1"
    - enabled: True
    - type: eth
    - proto: none
    - ipaddr: 192.168.50.50
    - netmask: 255.255.255.0
