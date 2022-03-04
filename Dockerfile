ARG source_image=python:3.10-alpine
FROM ${source_image}

ARG requirements=builds/8-requirements.txt

# Git is used for the git-revision plugin
RUN apk add -U git

COPY ${requirements} /docs/requirements.txt

WORKDIR /docs

RUN pip install -r requirements.txt

# Expose MkDocs development server port
EXPOSE 8000

# Start development server by default
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
