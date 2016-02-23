# -*- coding: utf-8 -*-
# vim: ft=sls

lvs-name:
  service.running:
    - name: ipvsadm
    - enable: True
