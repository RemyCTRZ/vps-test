FROM node:18-alpine

WORKDIR /projets/demo1/remy/hello-action
COPY ./ /projets/demo1/remy/hello-action

RUN ls -a

RUN npm install

RUN npm run build

EXPOSE 3010

CMD ["npm", "run", "start"]