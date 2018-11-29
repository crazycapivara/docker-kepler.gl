FROM node:8.13.0-alpine

LABEL maintainer="Stefan Kuethe <crazycapivara@gmail.com>"

RUN apk update \
	&& apk upgrade \
	&& apk add git

RUN git clone https://github.com/uber/kepler.gl.git

WORKDIR /kepler.gl

RUN npm install \
	&& npm audit fix

EXPOSE 8080

RUN  sed -i s/\"start-local\".*/'"start-local": "webpack-dev-server --progress --port 8080 --host 0.0.0.0",'/g examples/demo-app/package.json

ADD demo-app/css/superfine.css /kepler.gl/examples/demo-app/css/superfine.css
ADD demo-app/index.html /kepler.gl/examples/demo-app/index.html

CMD ["npm", "start"]

