Ansible роль "deploy_node_exporter"
=========

Данная роль служит для развертывания агента мониторинга метрик linux хостов "node-exporter".

Требования:
-----------

На целевом хосте должны быть установлены пакеты docker.io и docker-compose-v2.

Переменные для роли:
--------------------

deploy_node_exporter_project_src   - рабочая директория для docker-compose-v2

deploy_node_exporter_image_version - версия docker обзара node-exporter, которая будет развернута

Информация об авторе:
---------------------

Автор: MaxCurly (Maxim Kudryashov m.v.kudryashov@ya.ru)