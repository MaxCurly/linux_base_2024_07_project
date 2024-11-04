Ansible роль "deploy_prometheus"
=========

Данная роль служит для развертывания базы данных временных рядов "Prometheus".

Требования:
-----------

На целевом хосте должны быть установлены пакеты docker.io и docker-compose-v2.

Переменные для роли:
--------------------

deploy_prometheus_data_src      - рабочая директория для сохранения данных приложений

deploy_prometheus_project_src   - рабочая директория для docker-compose-v2

deploy_prometheus_image_version - версия docker обзара prometheus, которая будет развернута

Информация об авторе:
---------------------

Автор: MaxCurly (Maxim Kudryashov m.v.kudryashov@ya.ru)