net.ipv4.ip_local_port_range:
  sysctl.present:
    - name: net.ipv4.ip_local_port_range
    - value: 12001 65535

net.ipv4.ip_local_reserved_ports:
  sysctl.present:
    - name: net.ipv4.ip_local_reserved_ports
    - value: 20000-22000
