#{% for usr in 'moe','larry','currly' %}
#{{ usr }}:
#  user:
#    - present
#{% endfor %}
#
#{% for grp in 'foo','bar','baz' %}
#{{ grp }}:
#  group:
#    - present
#{% endfor %}

user_myuser:
  user.present:
    - name: myuser
    - shell: /bin/bash
    - home: /home/myuser
    - uid: 1001
#    - gid: 1001
    - groups:
      - wheel
