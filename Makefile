.PHONY: build
build: build-docker

.PHONY: build-docker
build-docker: snap/snapcraft.yaml
	docker run -v "$$PWD":/build -w /build snapcore/snapcraft:stable snapcraft

.PHONY: try
try:
	snap try --devmode
