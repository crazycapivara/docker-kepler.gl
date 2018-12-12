#!/bin/sh
docker run -p 8080:80 \
	-d \
	--name kepler.gl \
	-e MapboxAccessToken="yourMapboxAccessToken" \
	crazycapivara/kepler.gl

