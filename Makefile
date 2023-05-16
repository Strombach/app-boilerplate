build:
	docker build -t express-boiler-app ./backend

run:
	docker run -v $(CURDIR)/backend:/app -p 3000:3000 -d --name ccblues-backend express-boiler-app

clear:
	docker rm ccblues-backend -f
