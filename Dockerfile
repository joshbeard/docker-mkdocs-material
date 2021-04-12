FROM ${PYTHON_IMAGE:-python}:${PYTHON_IMAGE_TAG:-3.9-slim-buster}

# Git is used for the git-revision plugin
RUN apt-get update \
  && apt-get install -y git \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

COPY ./requirements.txt /docs/requirements.txt

WORKDIR /docs

RUN pip install -r requirements.txt

# Expose MkDocs development server port
EXPOSE 8000

# Start development server by default
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
