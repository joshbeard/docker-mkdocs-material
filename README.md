# mkdocs-material

An image containing [mkdocs](https://www.mkdocs.org/) with the
[material](https://squidfunk.github.io/mkdocs-material/) theme and plugins.

This image is built from the [python](https://hub.docker.com/_/python)
_3.x-slim_ and _3.x-alpine_ images.

## Project Resources

* Source Repository: <https://gitlab.com/jbeard.dev/docker-images/jbeard-mkdocs-material>
* `Dockerfile`: <https://gitlab.com/jbeard.dev/docker-images/jbeard-mkdocs-material/-/blob/master/Dockerfile>
* Docker Hub: <https://hub.docker.com/r/joshbeard/mkdocs-material>

## Tags

* `8`: Current 8.x release from PyPi from the `python:3.x-slim` image.
* `8-alpine`: Current 8.x release from PyPi from the `python:3.x-alpine` image.
* `latest`: Current release from PyPi from the `python:3.x-slim` image.
* `latest-alpine`: Current release from PyPi from the `python:3.x-alpine` image.

## Running

Mount a folder with an mkdocs site and `mkdocs.yml` file to `/docs` on the container.

* Start the development server on `:8000`

```shell
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs joshbeard/mkdocs-material:8
```

* Build documentation

```shell
docker run --rm -it -v ${PWD}:/docs joshbeard/mkdocs-material:8 build
```

Refer to the [example](https://github.com/joshbeard/docker-mkdocs-material/blob/master/example).

## Plugins

* Check [`builds/8-requirements.txt`](builds/8-requirements.txt)
* <https://pypi.org/project/pymdown-env/>

## Maintainers

* Josh Beard, <https://joshbeard.me>
