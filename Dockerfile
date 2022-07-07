FROM python:3.8-slim
FROM node:latest

LABEL 维护者="JamYido2812856215@qq.com"

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN chmod +x docker-runing.sh

EXPOSE 5000

ENTRYPOINT [ "/usr/src/app/docker-runing.sh" ]