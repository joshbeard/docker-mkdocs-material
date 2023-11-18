ARG source_image=python
ARG source_image_tag=3.12-alpine
FROM ${source_image}:${source_image_tag}

ARG requirements=builds/9-requirements.txt

# Git is used for the git-revision plugin
RUN apk --no-cache add git

ARG USER_UID=1066
ARG USER_GID=1066
RUN adduser -D \
  -u $USER_UID \
  -g $USER_GID \
  -h /home/mkdocs \
  -s /bin/sh \
  mkdocs

COPY ${requirements} /docs/requirements.txt

WORKDIR /docs

RUN pip install --no-cache-dir -r requirements.txt

USER mkdocs

# Expose MkDocs development server port
EXPOSE 8000

# Start development server by default
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
