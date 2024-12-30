FROM node:18

WORKDIR /myprofile

COPY ./myprofile/public /myprofile/public

COPY ./myprofile/src /myprofile/src

COPY ./myprofile/package*.json /myprofile/

RUN npm install


EXPOSE 3000

CMD [ "npm", "start" ]