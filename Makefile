include .env

.PHONY: dev codebase codebase/fix

dev:
	make install-dependencies
	foreman start -f Procfile.dev

install-dependencies:
	bundle install

codebase:
	rubocop

codebase/fix:
	rubocop -a

build:
	bin/docker-prepare
	docker-compose build
	docker-compose push web
