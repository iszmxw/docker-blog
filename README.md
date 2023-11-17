# docker-blog

## 此 docker 为 博客专用


### 目录结构

```text
├── README.md
├── conf
│   ├── nginx
│   │   ├── conf.d
│   │   │   ├── blog.54zm.com.conf
│   │   │   └── default.conf
│   │   └── nginx.conf
│   ├── php
│   │   ├── Dockerfile
│   │   ├── etc
│   │   │   ├── pear.conf
│   │   │   ├── php
│   │   │   │   ├── conf.d
│   │   │   │   │   ├── docker-php-ext-sodium.ini
│   │   │   │   │   ├── encsvr.ini
│   │   │   │   │   ├── mongodb.ini
│   │   │   │   │   ├── phalcon.ini
│   │   │   │   │   ├── rdkafka.ini
│   │   │   │   │   └── redis.ini
│   │   │   │   ├── php.ini
│   │   │   │   ├── php.ini-development
│   │   │   │   └── php.ini-production
│   │   │   ├── php-fpm.conf
│   │   │   ├── php-fpm.conf.default
│   │   │   └── php-fpm.d
│   │   │       ├── docker.conf
│   │   │       ├── www.conf
│   │   │       ├── www.conf.default
│   │   │       └── zz-docker.conf
│   │   └── pkg
│   │       ├── cphalcon-3.4.3.tar
│   │       ├── encsvr_7.3.8.tar.gz
│   │       ├── librdkafka.tar
│   │       ├── mongo-php-driver.tar
│   │       ├── rdkafka-3.1.2.tar
│   │       └── redis-4.2.0.tar
│   └── redis
│       └── redis.conf
├── data
│   ├── mysql
│   └── redis
├── docker-compose.yml
├── log
│   ├── mysql
│   └── nginx
├── web_clear.sh
├── web_start.sh
├── web_stop.sh
└── www
    ├── html
    │   ├── 50x.html
    │   └── index.html
    └── site
        └── blog.54zm.com
```


- web_start.sh：启动容器

- web_stop.sh：停止容器

- web_clear.sh：清除项目