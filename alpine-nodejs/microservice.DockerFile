FROM alpine
RUN apk update
RUN apk upgrade
RUN apk add nodejs
RUN apk add npm
RUN apk add vim
RUN apk add curl bash which git openssh mysql

# MAKE DIRS
WORKDIR /var/distribution
RUN apk update
RUN apk upgrade

# RUN npm install
EXPOSE 8080
# CMD [ "node", "server.js" ]