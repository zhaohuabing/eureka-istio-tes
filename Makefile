main: docker_service docker_client
docker_service: copy_service_jar
	docker build eureka-service/docker/ -t zhaohuabing/eureka-test-service:0.0.1
copy_service_jar: build_jar
	cp eureka-service/build/libs/eureka-service-0.0.1-SNAPSHOT.jar eureka-service/docker/
docker_client: copy_client_jar
	docker build eureka-client/docker/ -t zhaohuabing/eureka-test-client:0.0.1
copy_client_jar: build_jar
	cp eureka-client/build/libs/eureka-client-0.0.1-SNAPSHOT.jar eureka-client/docker/
build_jar:
	gradle -x test clean build jar
	
