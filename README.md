# lburinov73_microservices
lburinov73 Microservices repository


## домашнее задание N13 (docker-2)
Было сделано:
Основное задание.
Задание со *: описание разницы между контейнером и образом в docker-1.log
Задание со *:
- поднятие инстансов с помощью terraform
- шаблон packer для создания образа с установленным docker и модулем python
- плейбуки ansible для установки docker и запуска контейнера

## домашнее задание N14 (docker-3)
Было сделано:
Все докерфайлы исправлены в соответсвии с рекомендациями линтера hadolint.
1-е задание со *: запуск контейнеров с другими сетвыми алиасами (run_app_alias.sh)
2-е задание со *: уменьшение размеров образов:
Использован базовый образ ruby:2.2-alpine для ui и comment
bundler и мета-пакет build-base удаляются после сборки
Данные базы mongodb вынесены в volume.
Размеры образов после всех оптимизаций:
```
REPOSITORY           TAG            IMAGE ID       CREATED          SIZE
lburinov73/ui        2.0            f672edb7feb8   16 minutes ago   147MB
lburinov73/comment   2.0            804f2ff9c9b0   17 minutes ago   145MB
lburinov73/post      2.0            ed8448c88d69   17 minutes ago   115MB
```

## домашнее задание N15 (docker-4)
Было сделано:
docker-compose изменен под кейс с множеством сетей;
С помощью переменных окружения параметризированы: порт сервиса UI и версии сервисов;
Изменить имя проекта в docker-compose можно с помощью переменной окружения `COMPOSE_PROJECT_NAME`,
либо указав при запуске опцию `-p / --project-name`.
Задание со *:
Создан docker-compose.override.yml для монтирования директорий с кодом внутрь запущенных контейнеров (директории должны быть доступны с docker-host).

## домашнее задание N16 (gitlab-ci-1)
Было сделано:
Основное задание
Развернут gitlab-ce, запущен gitlab-runner, runner зарегистрирован, проверена работа пайплайнов с окружениями.

## домашнее задание N17 (monitoring-1)
Было сделано:
Основное задание.
Задания со *:
- добавлен мониторинг MongoDB с помощью percona/mongodb-exporter;
- добавлен мониторинг сервисов comment,post,ui через blackbox-exporter;
- написан Makefile для сборки и загрузки образов.

## домашнее задание N18 (logging-1)
Было сделано:
Основное задание.

## домашнее задание N19 (kubernetes-1)
Было сделано:
Основное задание.
Задание со *: развертывание кластера описано с помощью terraform и ansible (с использованием ролей из galaxy).

## домашнее задание N22 (kubernetes-2)
Было сделано:
Основное задание.
Задание со *.

## домашнее задание N20 (kubernetes-3)
Было сделано:
- Основное задание.
- Исправления network policy для сервиса post: `kubernetes/reddit/mongo-network-policy.yml`
- Задание со *: TLS-secret в виде манифеста: `kubernetes/reddit/ui-ingress-secret.yml`
- pv/pvc для mongodb: `kubernetes/reddit/mongo-pv[c].yml`
