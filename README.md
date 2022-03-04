# mkdocs-material

An image containing [mkdocs](https://www.mkdocs.org/) with the
[material](https://squidfunk.github.io/mkdocs-material/) theme and plugins.

This image is built from the [python](https://hub.docker.com/_/python)
_3.x-slim_ and _3.x-alpine_ images.

## Project Resources

* Source Repository: <https://gitlab.com/jbeard.dev/docker-images/jbeard-mkdocs-material>
* `Dockerfile`: (Alpine; default) <https://gitlab.com/jbeard.dev/docker-images/jbeard-mkdocs-material/-/blob/master/Dockerfile>
* `Dockerfile-slim`: (Debian) <https://gitlab.com/jbeard.dev/docker-images/jbeard-mkdocs-material/-/blob/master/Dockerfile>
* Docker Hub: <https://hub.docker.com/r/joshbeard/mkdocs-material>

## Tags

* [`8`](https://gitlab.com/jbeard.dev/docker-images/jbeard-mkdocs-material/-/blob/master/Dockerfile),
  [`8-alpine`](https://gitlab.com/jbeard.dev/docker-images/jbeard-mkdocs-material/-/blob/master/Dockerfile):
  Current 8.x release from PyPi from the `python:3.x-alpine` Alpine image.
* [`8-slim`](https://gitlab.com/jbeard.dev/docker-images/jbeard-mkdocs-material/-/blob/master/Dockerfile-slim):
  Current 8.x release from PyPi from the `python:3.x-slim` Debian image.
* [`latest`](https://gitlab.com/jbeard.dev/docker-images/jbeard-mkdocs-material/-/blob/master/Dockerfile),
  [`latest-alpine`](https://gitlab.com/jbeard.dev/docker-images/jbeard-mkdocs-material/-/blob/master/Dockerfile):
  Current release from PyPi from the `python:3.x-alpine` Alpine image.
* [`latest-slim`](https://gitlab.com/jbeard.dev/docker-images/jbeard-mkdocs-material/-/blob/master/Dockerfile-slim):
  Current release from PyPi from the `python:3.x-slim` Debian image.

## Running

Mount a folder with an mkdocs site and `mkdocs.yml` file to `/docs` on the container.

* Start the development server on `:8000`

```shell
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs joshbeard/mkdocs-material:8
```

* Build documentation. This produces static content in a `site/` directory:

```shell
docker run --rm -it -v ${PWD}:/docs joshbeard/mkdocs-material:8 build
```

Refer to the [example](https://github.com/joshbeard/docker-mkdocs-material/blob/master/example) to see an example
site using `docker-compose`.

## Plugins

* Check [`builds/latest-requirements.txt`](https://github.com/joshbeard/docker-mkdocs-material/blob/master/builds/8-requirements.txt)
* The [example site MkDocs config](https://gitlab.com/jbeard.dev/docker-images/jbeard-mkdocs-material/-/blob/master/example/mkdocs.yml) has several plugins enabled.
* <https://pypi.org/project/pymdown-env/>

## Maintainers

* Josh Beard, <https://joshbeard.me>
