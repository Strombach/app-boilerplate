IMAGE_NAME := express-boiler-app

hello:
	echo 'HELLO FROM BACKEND'

build:
	docker build -t ${IMAGE_NAME} .

run:
	docker run -v $(CURDIR):/app:ro -v /app/node_modules --env-file ./.env -p 3000:4000 -d --name ${BACKEND_CONTAINER} ${IMAGE_NAME}
