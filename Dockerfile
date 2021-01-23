# Container image that runs your code
FROM alpine:3.10

ENV PACKAGAYA_COMMAND="sync info"

RUN apk add node

RUN node i -g yarn
RUN yarn global add @packagaya/cli

WORKDIR /app

COPY . .

RUN yarn add @packagaya/ts-adapter

ENTRYPOINT [ "packagaya", "${PACKAGAYA_COMMAND}" ]
