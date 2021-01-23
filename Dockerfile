# Container image that runs your code
FROM node:15.6.0-alpine3.10

ENV LOG_LEVEL="silly"

RUN yarn global add @packagaya/cli

WORKDIR /app

COPY . .

ENTRYPOINT [ "packagaya", "sync", "info" ]
