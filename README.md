# kepler.gl in a box

* [http://kepler.gl](http://kepler.gl)
* [https://github.com/uber/kepler.gl](https://github.com/uber/kepler.gl)

## Pull

```bash
docker pull crazycapivara/kepler.gl
```

## Run

```bash
docker run --name kepler.gl -p 8080:80 -d crazycapivara/kepler.gl

# Optional: pass your mapbox access token to the container
docker run  --name kepler.gl -p 8080:80 \
	-e MapboxAccessToken="yourMapboxAccessToken" -d crazycapivara/kepler.gl
```

Some modules need to be build at startup. Therefore, it will a take a minute until the container is ready to use
at [http://localhost:8080](http://localhost:8080).

## Build

```bash
docker build -t crazycapivara/kepler.gl https://github.com/crazycapivara/docker-kepler.gl.git
```

