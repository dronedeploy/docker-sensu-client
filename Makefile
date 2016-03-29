build:
	docker build -t dronedeploy/sensu-client:$(tag) .
release:
	docker build -t dronedeploy/sensu-client:$(tag) .
	docker push dronedeploy/sensu-client:$(tag)
