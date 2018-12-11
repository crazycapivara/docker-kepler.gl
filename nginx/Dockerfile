FROM nginx:1.15.7-alpine 

LABEL maintainer="Stefan Kuethe <crazycapivara@gmail.com>"

RUN apk update \
	&& apk upgrade \
	&& apk add git nodejs nodejs-npm

RUN git clone https://github.com/uber/kepler.gl.git

WORKDIR /kepler.gl

RUN npm install \
	&& npm audit fix

WORKDIR /kepler.gl/examples/demo-app

RUN npm install \
	&& npm audit fix

ADD ./docker-entrypoint.sh /kepler.gl/examples/demo-app/docker-entrypoint.sh

RUN chmod +x docker-entrypoint.sh

EXPOSE 80

ENTRYPOINT ["./docker-entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]

