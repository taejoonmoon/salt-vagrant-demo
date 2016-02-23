users:
  ## Minimal required pillar values
  auser:
    fullname: A User

  ## Full list of pillar values
  buser:
    fullname: B User
#    password: $6$w.............
#    enforce_password: True
#    # WARNING: If 'empty_password' is set to True, the 'password' statement
#    # will be ignored by enabling password-less login for the user.
#    empty_password: False
#    home: /custom/buser
#    createhome: False
#    roomnumber: "A-1"
#    workphone: "(555) 555-5555"
#    homephone: "(555) 555-5551"
#    manage_vimrc: False
#    manage_bashrc: False
#    manage_profile: False
#    expire: 16426
    sudouser: True
#    # sudo_rules doesn't need the username as a prefix for the rule
#    # this is added automatically by the formula.
#    # ----------------------------------------------------------------------
#    # In case your sudo_rules have a colon please have in mind to not leave
#    # spaces around it. For example:
#    # ALL=(ALL) NOPASSWD: ALL    <--- THIS WILL NOT WORK (Besides syntax is ok)
#    # ALL=(ALL) NOPASSWD:ALL     <--- THIS WILL WORK
    sudo_rules:
      - ALL=(ALL) NOPASSWD:/sbin/fdisk,/usr/sbin/useradd
      #- ALL=/sbin/fdisk NOPASSWD
      - ALL=(root) /usr/bin/find
      - ALL=(otheruser) /usr/bin/script.sh
#    sudo_defaults:
#      - '!requiretty'
#    shell: /bin/bash
#    prime_group:
#      name: primarygroup
#      gid: 500
    groups:
      - users
    ssh_key_type: rsa
    # You can inline the private keys ...
    ssh_keys:
      privkey: "-----BEGIN RSA PRIVATE KEY-----
MIIEoQIBAAKCAQEAu2YwqFdOuhXL1If7so/fPXcSZ5eNnZsSXxMl8GoJx0mBcKXq
QRAnmjOJibsaFtRv2wi7D/YAdRVWuHmLc3j75n5zSEib4VzghWaIo1k+gkIrMxfU
zDRl+ggnwuGVOhJrJHPAxjY2TLjWgFr6F9msm7o/FNXgXgl1vr5I116LBk7G84o9
u3wfai1FObP+rRRbAZvc3lq5rWb0HGAjNJMmpZRnyT6bcNUh1WekDX0fIC1gUhRY
AQwBxKAKii8iLIY0uN6un+Kkd4HT3b4SMpmFW3H7l+kQLKGHwjHo46jXD9Rv9TPi
5U406wXFN1+4UZqBYMYBZrSQaPIuAR15jFJhMwIBIwKCAQAKtWHdu9ic60152+J/
O2vXoGdzokKbSrCXt/OKFLAaBDNIQ/7B46p91w8scRdvBNMxFnEW2tt0Z56OMtTE
xRW1Zk+6/NW1G0AHn3WFrVQHcX7PuDgLqzkG+SbX76Igk1aUXmLJf3DRLyIzOGYP
/c9ZWxmMKXqJB9rXsxoa73WolrB0r/jMOgEnQv/wJZRVDuSpfcRplV/sY+RKlxEB
8P0SkJ01ulHD1EYwqYErV5uIwUtBPoajgjM8nklekXICM8X6r9WvIWV3z5aAv05D
NpTlmkw80bgouOVBx10ZQM5p+W4O+xrn1nesW1qWjJhKGuuyvg5nR0Nh4RVUwU2p
DmmLAoGBAOmloOwrxpWceCJ7KRM2Py7VH0qf3pd97YrauxufVPxN8CU7r2wVrkJF
3/PLQGhwrsChuzYVOJoxEr9Ub7EUZt2vtd16T4H8r7stXlxK16TjD7x2JOvjuBUe
YFonm0ZUIN82YgIVtBnczdKPCIenlzF9vBuwak7coXXGRsETnAeBAoGBAM1T4c+Z
vnWeoKPT+UemUIqWY6UGxhOGpU4oUV3zRN2SwYNhUph4JBM78VvLv5TWR/q6ku2+
bObuu0c+ziXxlU5mI7WsyrLKIU7jS9xPhrLGVgj5bg2ARcaksLGCH3R9Joq4p4n2
cOzF+UFduseZLDMrC+mm6yZbbcLvn+lqOiKzAoGBAOL4qvQNRJFWK4810CFKo8cY
LQap7izDeQqLVq0eb9CGOb3E842RZ3OUVeWDnadI5EYZdAim5ocoW1rHDWoxE3hE
SkTdN0sSuVa+W6oc0XuavtRVgvPHRRvUXZloTbIIlPYXkmhs2tdLhhz/+ahZqND9
zK0vCC9Z++7AnIELvCSLAoGAC7umgOQ2xOR+NT9QErkL6qmCCW4Z8ny4/SbgE/9F
w4S6mcsMCLZodiCutMnQbuesV3hgKteuc5ic/MHCoxUeeYIt7R/REYfkpWwS9qV1
aU0pfNsNml8Z7hgKGMWbZb4CM9AJktrh4aTpq/a6N0qUz7lRI0td5O9IGcSMy4Jp
uNcCgYAEIp2AUIEMZTR4MJuNso0sBjSw7BitGMYaHYSGD2mLr+GV7/GF7huCrvJq
kHF/Cqd2fGmpjr4BW5AZ7ujt5UiClkMlc3Tqg0V08OwkAxUn3zXLWl3WmrkPysSH
FYnt+bogyYBvSSFqPfoj+SwO19wLOUsJYuWr81JfB7aHLWhGZw==
-----END RSA PRIVATE KEY-----"
      pubkey: "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAu2YwqFdOuhXL1If7so/fPXcSZ5eNnZsSXxMl8GoJx0mBcKXqQRAnmjOJibsaFtRv2wi7D/YAdRVWuHmLc3j75n5zSEib4VzghWaIo1k+gkIrMxfUzDRl+ggnwuGVOhJrJHPAxjY2TLjWgFr6F9msm7o/FNXgXgl1vr5I116LBk7G84o9u3wfai1FObP+rRRbAZvc3lq5rWb0HGAjNJMmpZRnyT6bcNUh1WekDX0fIC1gUhRYAQwBxKAKii8iLIY0uN6un+Kkd4HT3b4SMpmFW3H7l+kQLKGHwjHo46jXD9Rv9TPi5U406wXFN1+4UZqBYMYBZrSQaPIuAR15jFJhMw== buser@saltminion3.local"
#    # ... or you can pull them from a different pillar,
#    # for example one called "ssh_keys":
#    ssh_keys_pillar:
#      id_rsa: "ssh_keys"
#      another_key_pair: "ssh_keys"
#    ssh_auth:
#      - PUBLICKEY
#    ssh_auth.absent:
#      - PUBLICKEY_TO_BE_REMOVED
#    # Generates an authorized_keys file for the user
#    # with the given keys
#    ssh_auth_file:
#      - PUBLICKEY
#    # ... or you can pull them from a different pillar similar to ssh_keys_pillar
#    ssh_auth_pillar:
#      id_rsa: "ssh_keys"
#    # If you prefer to keep public keys as files rather
#    # than inline in pillar, this works.
#    ssh_auth_sources:
#      - salt://keys/buser.id_rsa.pub
#    # Manage the ~/.ssh/config file
#    ssh_known_hosts:
#      importanthost:
#        fingerprint: 16:27:ac:a5:76:28:2d:36:63:1b:56:4d:eb:df:a6:48
#    ssh_known_hosts.absent:
#      - notimportanthost
#    ssh_config:
#      all:
#        hostname: "*"
#        options:
#          - "StrictHostKeyChecking no"
#          - "UserKnownHostsFile=/dev/null"
#      importanthost:
#        hostname: "needcheck.example.com"
#        options:
#          - "StrictHostKeyChecking yes"
#
#    gitconfig:
#      user.name: B User
#      user.email: buser@example.com
#      url."https://".insteadOf: "git://"
#
#    google_2fa: True
#    google_auth:
#      ssh: |
#        SOMEGAUTHHASHVAL
#        " RESETTING_TIME_SKEW 46956472+2 46991595-2
#        " RATE_LIMIT 3 30 1415800560
#        " DISALLOW_REUSE 47193352
#        " TOTP_AUTH
#        11111111
#        22222222
#        33333333
#        44444444
#        55555555
#    uid: 1001
#
#    user_files:
#      enabled: True
#      # 'source' allows you to define an arbitrary directory to sync, useful to use for default files.
#      # should be a salt fileserver path either with or without 'salt://'
#      # if not present, it defaults to 'salt://users/files/user/<username>
#      source: users/files/default

  ## Absent user
  cuser:
    absent: True
    purge: True
    force: True


### Old syntax of absent_users still supported
#absent_users:
#  - donald
#  - bad_guy
