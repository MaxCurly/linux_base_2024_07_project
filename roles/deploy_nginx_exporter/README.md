Ansible роль "deploy_nginx_exporter"
=========

Данная роль служит для развертывания агента мониторинга метрик nginx "nginx-exporter".

Требования:
-----------

На целевом хосте должны быть установлены пакеты docker.io и docker-compose-v2.

Переменные для роли:
--------------------

| переменная                          | описание                                                      |
|-------------------------------------|---------------------------------------------------------------|
| deploy_nginx_exporter_project_src   | рабочая директория для docker-compose-v2                      |
| deploy_nginx_exporter_image_version | версия docker обзара nginx-exporter, которая будет развернута |

Информация об авторе:
---------------------

Автор: MaxCurly (Maxim Kudryashov m.v.kudryashov@ya.ru)