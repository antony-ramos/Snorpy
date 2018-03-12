
FROM node:carbon

# Create app directory
WORKDIR /usr/src/app
RUN wget https://github.com/antony-ramos/Snorpy/archive/master.zip
RUN  apt-get update -y && \
     apt-get upgrade -y && \
     apt-get dist-upgrade -y && \
     apt-get -y autoremove && \
     apt-get clean
RUN apt-get install -y unzip
RUN unzip master.zip
WORKDIR /usr/src/app/Snorpy-master
RUN unzip node_modules.zip
EXPOSE 80
CMD [ "node", "app.js" ]

