# mkdocs-material

An image containing [mkdocs](https://www.mkdocs.org/) with the
[material](https://squidfunk.github.io/mkdocs-material/) theme and plugins.

This image is built from the [python](https://hub.docker.com/_/python)
_3.x-buster-slim_ image.

## Project Resources

* Source Repository: <https://gitlab.com/jbeard.dev/docker-images/jbeard-mkdocs-material>
* `Dockerfile`: <https://gitlab.com/jbeard.dev/docker-images/jbeard-mkdocs-material/-/blob/master/Dockerfile>
* Docker Hub: <https://hub.docker.com/r/joshbeard/mkdocs-material>

## Tags

* `1.1_6.2`, `latest`: mkdocs 1.1 and mkdocs-material 6.2

## Running

Mount a folder with an mkdocs site and `mkdocs.yml` file to `/docs` on the container.

* Start the development server on `:8000`

```shell
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs joshbeard/mkdocs-material:latest
```

* Build documentation

```shell
docker run --rm -it -v ${PWD}:/docs joshbeard/mkdocs-material:latest build
```

## Plugins

* Check [requirements.txt](requirements.txt)
* <https://pypi.org/project/pymdown-env/>

## Maintainers

* Josh Beard, <https://joshbeard.me>
