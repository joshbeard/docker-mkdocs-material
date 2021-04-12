# mkdocs-material

Builds mkdocs with the [material](https://squidfunk.github.io/mkdocs-material/) theme and plugins.

## Running

Mount a folder with an mkdocs site and `mkdocs.yml` file to `/docs` on the container.

* Start the development server on `:8000`

```shell
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs mkdocs-material:latest
```

* Build documentation

```shell
docker run --rm -it -v ${PWD}:/docs mkdocs-material:latest build
```

## Plugins

* Check [requirements.txt](requirements.txt)
* <https://pypi.org/project/pymdown-env/>
