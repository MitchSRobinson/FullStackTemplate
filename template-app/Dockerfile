FROM node:10

WORKDIR /srv/app

RUN npm install -g @angular/cli

ADD template-app/package.json /srv/app/

RUN npm install

ADD ./template-app/ /srv/app/

EXPOSE 4200

CMD ["npm", "start"]
