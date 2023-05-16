BACKEND_DIR := ./backend
BACKEND_CONTAINER_NAME := boiler-app

export BACKEND_CONTAINER_NAME

build:
	${MAKE} -C ${BACKEND_DIR} build

run:
	$(MAKE) -C ${BACKEND_DIR} run
