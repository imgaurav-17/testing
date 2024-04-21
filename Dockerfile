FROM node:20

RUN npm install npm@latest -g && \
    npm install n -g && \
    n latest


RUN node main.js


