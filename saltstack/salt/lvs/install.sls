# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "lvs/map.jinja" import lvs with context %}

lvs-pkg:
  pkg.installed:
    - name: {{ lvs.pkg }}
