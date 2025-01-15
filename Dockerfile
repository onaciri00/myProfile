FROM node:18

WORKDIR /myprofile

COPY ./my_react_app/ /myprofile/


COPY ./my_react_app/package*.json /myprofile/

RUN npm install

RUN npm i -g serve

EXPOSE 3000

RUN npm run build

CMD [ "serve", "-s", "dist" ]









