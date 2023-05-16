run:
	docker run -v ${shell pwd}/backend:/app -p 3000:3000 -d --name ccblues-backend express-boiler-app
clear:
	docker rm ccblues-backend -f
