.DEFAULT_GOAL := all

REPO := lburinov73

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//;s/##//'

build_ui:		## build ui image
	@cd src/ui; bash docker_build.sh; cd -

build_post:		## build post image
	@cd src/post-py; bash docker_build.sh; cd -

build_comment:		## build comment image
	@cd src/comment; bash docker_build.sh; cd -

build_prometheus:	## build prometheus image
	@cd monitoring/prometheus; bash build.sh; cd -

build_all:		## build all images
build_all: build_ui build_post build_comment build_prometheus

push_ui:		## push ui image
	@docker push $(REPO)/ui

push_post:		## push post image
	@docker push $(REPO)/post

push_comment:		## push comment image
	@docker push $(REPO)/comment

push_prometheus:	## push prometheus image
	@docker push $(REPO)/prometheus

push_all:		## push all images
push_all: push_ui push_post push_comment push_prometheus

all:			## build and push all images (default)
all: build_all push_all
