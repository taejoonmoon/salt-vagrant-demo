myhosts in hosts file:
  host.present:
    - name: myserver
    - ip: {{ pillar['myhost'] }}

remote log server in hosts file:
  host.present:
    - name: remote_log_server
    - ip: {{ salt['pillar.get']('logserver:ip') }}
