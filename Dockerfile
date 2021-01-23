# Container image that runs your code
FROM node:15.6.0-alpine3.10

ENV PACKAGAYA_COMMAND="sync info"

RUN yarn global add @packagaya/cli

WORKDIR /app

COPY . .

RUN yarn add -W -D @packagaya/ts-adapter

ENTRYPOINT [ "packagaya", "${PACKAGAYA_COMMAND}" ]
