{% for domain, site in salt['pillar.get']('lvs',{}).items() %}
{% set service_address = site.service_address %}
{% set service_id = 'lvs_service_' ~ loop.index0 ~ '_' ~ domain ~ '_' ~ service_address %}

{% if site.enabled == 'on' %}
{{ service_id }}:
  lvs_service.present:
    - service_address: {{ service_address }}
    - protocol: tcp
    - scheduler: rr

# start - real_server
{% for real_server_ip in site.real_server %}
{% set real_server_id = 'lvs_real_server_' ~ loop.index0 ~ '_' ~ real_server_ip ~ ' (for ' ~ service_address ~ ')' %}
{{ real_server_id }}:
  lvs_server.present:
    - protocol: tcp
    - service_address: {{ service_address }}
    - server_address: {{ real_server_ip }}
    - packet_forward_method: dr
    - weight: 10
    - require:
       - lvs_service: {{ service_id }}
{% endfor %}
# stop - real_server
{% endif %}

{% endfor %}
