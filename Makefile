THIS_FILE := $(lastword $(MAKEFILE_LIST))

bundle:
	@bundle install

bash:
	sudo docker-compose run --service-ports web bash sh

up:
	sudo docker-compose up -d