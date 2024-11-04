# linux_base_2024_07_project
linux_base_2024_07_project


linux_base_2024_07_project
├── README.md
├── ansible.cfg
├── inventories
│   ├── app
│   │   ├── group_vars
│   │   │   └── app
│   │   │       └── inventory_roles.yml
│   │   └── main.yml
│   ├── db
│   │   ├── group_vars
│   │   │   └── db
│   │   │       ├── db.yml
│   │   │       └── inventory_roles.yml
│   │   ├── host_vars
│   │   │   ├── db01.yml
│   │   │   └── db02.yml
│   │   └── main.yml
│   ├── lb
│   │   ├── group_vars
│   │   │   └── lb
│   │   │       └── inventory_roles.yml
│   │   ├── host_vars
│   │   │   ├── lb01.yml
│   │   │   └── lb02.yml
│   │   └── main.yml
│   ├── log
│   │   ├── group_vars
│   │   │   └── log
│   │   │       └── inventory_roles.yml
│   │   └── main.yml
│   └── mon
│       ├── group_vars
│       │   └── mon
│       │       └── inventory_roles.yml
│       └── main.yml
├── main.tf
├── main.yml
├── provider.tf
├── roles
│   ├── deploy_cadvisor
│   │   ├── README.md
│   │   ├── handlers
│   │   │   └── main.yml
│   │   ├── tasks
│   │   │   └── main.yml
│   │   ├── templates
│   │   │   └── docker-compose.yml.j2
│   │   └── vars
│   │       └── main.yml
│   ├── deploy_docker
│   │   ├── README.md
│   │   ├── tasks
│   │   │   └── main.yml
│   │   └── vars
│   │       └── main.yml
│   ├── deploy_elk
│   │   ├── README.md
│   │   ├── files
│   │   │   ├── elasticsearch.yml
│   │   │   ├── kibana.yml
│   │   │   ├── logstash.yml
│   │   │   └── pipeline.conf
│   │   ├── handlers
│   │   │   └── main.yml
│   │   ├── tasks
│   │   │   └── main.yml
│   │   ├── templates
│   │   │   └── docker-compose.yml.j2
│   │   └── vars
│   │       └── main.yml
│   ├── deploy_filebeat
│   │   ├── README.md
│   │   ├── files
│   │   │   └── filebeat.yml
│   │   ├── handlers
│   │   │   └── main.yml
│   │   ├── tasks
│   │   │   └── main.yml
│   │   ├── templates
│   │   │   └── docker-compose.yml.j2
│   │   └── vars
│   │       └── main.yml
│   ├── deploy_grafana
│   │   ├── README.md
│   │   ├── handlers
│   │   │   └── main.yml
│   │   ├── tasks
│   │   │   └── main.yml
│   │   ├── templates
│   │   │   └── docker-compose.yml.j2
│   │   └── vars
│   │       └── main.yml
│   ├── deploy_keepalived
│   │   ├── README.md
│   │   ├── handlers
│   │   │   └── main.yml
│   │   ├── tasks
│   │   │   └── main.yml
│   │   ├── templates
│   │   │   └── keepalived.conf.j2
│   │   └── vars
│   │       └── main.yml
│   ├── deploy_mysql
│   │   ├── README.md
│   │   ├── files
│   │   │   └── mysqldump.sh.j2
│   │   ├── handlers
│   │   │   └── main.yml
│   │   ├── tasks
│   │   │   └── main.yml
│   │   ├── templates
│   │   │   ├── docker-compose.yml.j2
│   │   │   ├── my.cnf.j2
│   │   │   └── mysqldump.sh.j2
│   │   └── vars
│   │       └── main.yml
│   ├── deploy_nfs_mount
│   │   ├── README.md
│   │   ├── tasks
│   │   │   └── main.yml
│   │   └── vars
│   │       └── main.yml
│   ├── deploy_nginx_exporter
│   │   ├── README.md
│   │   ├── handlers
│   │   │   └── main.yml
│   │   ├── tasks
│   │   │   └── main.yml
│   │   ├── templates
│   │   │   └── docker-compose.yml.j2
│   │   └── vars
│   │       └── main.yml
│   ├── deploy_nginx_reverse_proxy
│   │   ├── README.md
│   │   ├── files
│   │   │   ├── default.conf
│   │   │   ├── nginx.conf
│   │   │   ├── project.local_ssl_cert.pem
│   │   │   └── project.local_ssl_key.pem
│   │   ├── handlers
│   │   │   └── main.yml
│   │   ├── tasks
│   │   │   └── main.yml
│   │   ├── templates
│   │   │   └── docker-compose.yml.j2
│   │   └── vars
│   │       └── main.yml
│   ├── deploy_node_exporter
│   │   ├── README.md
│   │   ├── handlers
│   │   │   └── main.yml
│   │   ├── tasks
│   │   │   └── main.yml
│   │   ├── templates
│   │   │   └── docker-compose.yml.j2
│   │   └── vars
│   │       └── main.yml
│   ├── deploy_pip
│   │   ├── README.md
│   │   ├── tasks
│   │   │   └── main.yml
│   │   └── vars
│   │       └── main.yml
│   ├── deploy_prometheus
│   │   ├── README.md
│   │   ├── files
│   │   │   └── prometheus.yml
│   │   ├── handlers
│   │   │   └── main.yml
│   │   ├── tasks
│   │   │   └── main.yml
│   │   ├── templates
│   │   │   └── docker-compose.yml.j2
│   │   └── vars
│   │       └── main.yml
│   └── deploy_wordpress
│       ├── README.md
│       ├── files
│       │   ├── default.conf
│       │   └── nginx.conf
│       ├── handlers
│       │   └── main.yml
│       ├── tasks
│       │   └── main.yml
│       ├── templates
│       │   └── docker-compose.yml.j2
│       └── vars
│           └── main.yml
├── terraform.tfstate
├── terraform.tfstate.backup
└── vars.tf