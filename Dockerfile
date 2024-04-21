FROM node:20

RUN npm install npm@latest -g && \
    npm install n -g && \
    n latest


RUN npm init -y && \
    npm install telegraf --save && \
    npm install mongodb --save && \
    npm install axios --save


