FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN apt-get update && \
    apt-get install -y git

RUN chmod +x .github/scripts/entrypoint.sh
ENTRYPOINT ["/bin/bash", "/app/.github/scripts/entrypoint.sh"]
