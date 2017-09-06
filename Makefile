image_name = postgresql-build

default: run

build:
	@docker build -t $(image_name) .
.PHONY: build

clean:
	@sudo rm -rf $(shell pwd)/RPMS
.PHONY: clean

run: build clean
	@docker run --rm --volume $(shell pwd)/RPMS:/root/rpmbuild/RPMS $(image_name)
.PHONY: run
