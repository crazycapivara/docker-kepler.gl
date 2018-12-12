FROM node:8.13.0-alpine

LABEL maintainer="Stefan Kuethe <crazycapivara@gmail.com>"

RUN apk update \
	&& apk upgrade \
	&& apk add git

RUN git clone https://github.com/uber/kepler.gl.git

WORKDIR /kepler.gl

RUN npm install \
	&& npm audit fix

WORKDIR /kepler.gl/examples/demo-app

RUN npm install \
        && npm audit fix

ENV PATH "$PATH:/kepler.gl/examples/demo-app/node_modules/.bin"

EXPOSE 80

CMD ["webpack-dev-server", "--progress", "--port", "80", "--host", "0.0.0.0"]

