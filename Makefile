# Makefile which covers tests

IMAGE_NAME = haproxy

build:
	docker build --tag=$(IMAGE_NAME) .

run: build
	docker run -d $(IMAGE_NAME)

test: build
	cd tests; MODULE=docker URL="docker=$(IMAGE_NAME)" make all
	cd tests; MODULE=rpm URL="docker=$(IMAGE_NAME)" make all
