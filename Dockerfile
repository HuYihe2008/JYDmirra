FROM node
LABEL 维护者="JamYido2812856215@qq.com"

WORKDIR /usr/src/app

COPY . .
RUN npm install -g npm@8.13.2
RUN npm install
RUN npm audit fix
RUN npm install
RUN npm run build

COPY . .
RUN chmod +x docker-runing.sh

EXPOSE 5000

ENTRYPOINT [ "/usr/src/app/docker-runing.sh" ]