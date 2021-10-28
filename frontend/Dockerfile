FROM node:12.22.7-alpine

RUN apk add --update git bash
COPY .docker/entrypoint.sh /usr/bin/entrypoint.sh
WORKDIR /home/node/app
RUN chown -R node:node /home/node/app
USER node
COPY package.json /home/node/app/
COPY yarn.lock /home/node/app/
RUN yarn
COPY . /home/node/app

ENTRYPOINT [ "entrypoint.sh" ]

CMD [ "yarn", "dev", "--port", "8080", "--host" ]
EXPOSE 8080
