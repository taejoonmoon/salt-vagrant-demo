# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "lvs/map.jinja" import lvs with context %}

{% for domain, site in salt['pillar.get']('lvs',{}).items() %}
{% set service_address = site.service_address %}
{% set service_id = 'lvs_service_' ~ loop.index0 ~ '_' ~ domain ~ '_' ~ service_address %}

{% if site.enabled == 'on' %}
{{ service_id }}:
  lvs_service.present:
    - service_address: {{ service_address }}
    - protocol: tcp
    - scheduler: rr
    - require:
      - service: {{ lvs.service.name }}

  # configure real_server
  {% for real_server_ip, info in site.real_server.items() %}
  {% set real_server_id = 'lvs_real_server_' ~ loop.index0 ~ '_' ~ real_server_ip ~ ' (for ' ~ service_address ~ ')' %}
  {% set real_server_ip_port = real_server_ip ~ ':' ~ info.port %}

{% if info.enabled == 'on' %}
#file_{{ real_server_id }}:
#  file.managed:
#    - name: /tmp/test/{{ real_server_ip }}:{{ info.port }}
##    - name: /tmp/test/{{real_server_ip_port}}
{{ real_server_id }}:
  lvs_server.present:
    - protocol: tcp
    - service_address: {{ service_address }}
    #- server_address: {{ real_server_ip }}:{{ info.port }}
    - server_address: {{ real_server_ip_port }}
    - packet_forward_method: dr
    - weight: 10
    - require:
       - lvs_service: {{ service_id }}
{% else %}
{{ real_server_id }}:
  lvs_server.absent:
    - protocol: tcp
    - service_address: {{ service_address }}
    - server_address: {{ real_server_ip_port }}
    #- require:
    #   - lvs_service: {{ service_id }}
{% endif %}
  {% endfor %}
  # configure real_server - end
{% else %}
{{ service_id }}:
  lvs_service.absent:
    - service_address: {{ service_address }}
    - protocol: tcp 
{% endif %}

{% endfor %}
