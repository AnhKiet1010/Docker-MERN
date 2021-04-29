FROM ubuntu:latest

RUN cd server && docker build -t react-app .
RUN	cd client && docker build -t api-server .

RUN docker run -i -d -p 3000:3000 react-app
RUN	docker run -d -p 5000:5000 api-server