mysql:
  server:
    root_password: 'somepass'
    root_password_hash: '*13883BDDBE566ECECC0501CDE9B293303116521A'
    user: mysql
    # my.cnf sections changes
    mysqld:
      bind-address: 0.0.0.0

  # Manage databases
  database:
    - foo
  schema:
    foo:
      load: True
      source: salt://mysql/files/foo.schema

  # Manage users
  # you can get pillar for existing server using scripts/import_users.py script
  user:
    frank:
      password: 'somepass'
      host: localhost
      databases:
        - database: foo
          grants: ['select', 'insert', 'update']
        - database: bar
          grants: ['all privileges']
    bob:
      password_hash: '*13883BDDBE566ECECC0501CDE9B293303116521A'
      host: 192.168.50.14
      databases:
        - database: foo
          grants: ['select', 'insert', 'update', 'delete']
