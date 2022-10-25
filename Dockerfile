ARG source_image=python
ARG source_image_tag=3.11-alpine
FROM ${source_image}:${source_image_tag}

ARG requirements=builds/8-requirements.txt

# Git is used for the git-revision plugin
RUN apk --no-cache add git

COPY ${requirements} /docs/requirements.txt

WORKDIR /docs

RUN pip install --no-cache-dir -r requirements.txt

# Expose MkDocs development server port
EXPOSE 8000

# Start development server by default
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
