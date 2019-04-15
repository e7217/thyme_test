FROM debian 
MAINTAINER e7217@naver.com 
RUN apt-get update && apt-get install git curl nano net-tools mosquitto mosquitto-clients -y \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install nodejs -y \
    && git clone https://github.com/e7217/thyme_test \
    && cd nCube-Thyme-Nodejs && npm i npm@latest -g && npm install && npm audit fix && npm install pm2 -g

EXPOSE 7577 
EXPOSE 7578 
EXPOSE 7582 
EXPOSE 8883 
EXPOSE 1883
