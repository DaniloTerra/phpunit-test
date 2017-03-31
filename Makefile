PWD:= $(shell pwd -L)
IMAGE_PHPUNIT:= phpunit/phpunit:6.0.6
DOCKER_RUN:= docker run --rm -w /app -v ${PWD}:/app ${IMAGE_PHPUNIT}

version:
	${DOCKER_RUN} --version

test:
	${DOCKER_RUN} --bootstrap src/Email.php tests/EmailTest
