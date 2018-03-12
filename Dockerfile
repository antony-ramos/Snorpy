FROM node:carbon

# Create app directory
WORKDIR /usr/src/app
RUN wget https://github.com/antony-ramos/Snorpy/archive/master.zip
RUN unzip master.zip
WORKDIR /usr/src/app/Snorpy-master
RUN unzip node_modules.zip
RUN node app.js

EXPOSE 80
CMD [ "npm", "start" ]
