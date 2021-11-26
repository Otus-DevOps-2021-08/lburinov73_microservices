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
