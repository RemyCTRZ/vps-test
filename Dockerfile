FROM node:18-alpine

WORKDIR E:/Projets/TEST_VPS/hello_actions
COPY ./ E:/Projets/TEST_VPS/hello_actions

RUN touch .env
RUN ls -a

RUN npm install

RUN npm run build

RUN --mount=type=secret,id=MY_SECRET,dst=/.env

EXPOSE 3010

CMD ["npm", "run", "start"]