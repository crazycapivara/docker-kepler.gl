# kepler.gl in a box

* [http://kepler.gl/#/](http://kepler.gl/#/)
* [https://github.com/uber/kepler.gl](https://github.com/uber/kepler.gl)

## Pull

```bash
docker pull crazycapivara/kepler.gl
```

## Run

```bash
docker run --name kepler.gl -p 8080:8080 -d crazycapivara/kepler.gl

# Optional: pass your mapbox access token to the container
docker run  --name kepler.gl -p 8080:8080 \
	-e MapboxAccessToken="yourMapboxAccessToken" -d crazycapivara/kepler.gl
```

## Build

```bash
docker build -t crazycapivara/kepler.gl https://github.com/crazycapivara/docker-kepler.gl.git
```

