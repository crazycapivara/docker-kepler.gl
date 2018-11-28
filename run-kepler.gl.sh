#!/bin/sh
docker run -p 8080:8080 \
	-d \
	--name kepler.gl \
	-e MapboxAccessToken="yourMapboxAccessToken" \
	crazycapivara/kepler.gl

