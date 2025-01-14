FROM node:18

WORKDIR /myprofile

COPY ./my_react_app/public /myprofile/public

COPY ./my_react_app/src /myprofile/src

COPY ./my_react_app/package*.json /myprofile/

RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]