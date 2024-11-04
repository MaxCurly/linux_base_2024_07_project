Ansible роль "deploy_grafana"
=========

Данная роль служит для развертывания системы визуализации и алализа метрик "Grafana".

Требования:
-----------

На целевом хосте должны быть установлены пакеты docker.io и docker-compose-v2.

Переменные для роли:
--------------------

deploy_grafana_data_src      - рабочая директория для сохранения данных приложений

deploy_grafana_project_src   - рабочая директория для docker-compose-v2

deploy_grafana_image_version - версия docker обзара grafana, которая будет развернута

Информация об авторе:
---------------------

Автор: MaxCurly (Maxim Kudryashov m.v.kudryashov@ya.ru)