IMAGE ?= deasil/rpi-omx-node

build:
	docker build -t $(IMAGE) .
push:
	docker push $(IMAGE)
