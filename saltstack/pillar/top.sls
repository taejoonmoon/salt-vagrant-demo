base:
  '*':
#    - default
    - template
    - hosts.prod
    - resolver
    - users
    - lvs

  'minion3':
    - mysql.prod

  'minion4':
    - mysql.dev
#    - hosts.dev
