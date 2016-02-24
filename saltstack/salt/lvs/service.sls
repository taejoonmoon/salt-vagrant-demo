# -*- coding: utf-8 -*-
# vim: ft=sls
{% from "lvs/map.jinja" import lvs with context %}

lvs-ipvsadm:
  service.running:
    - name: {{ lvs.service.name }}
    - enable: True
    - require:
      - pkg: {{ lvs.pkg }}
