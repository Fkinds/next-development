FROM ubuntu:22.04
#イメージでコンテナを分ける場合は、2つのappでそれぞれDBを使いたいとき！
#apt-getは古い、最新はapt
#RUN apt remove --purge nodejs
#RUN apt-get purge --auto-remove nodejs
RUN apt-get update && apt-get install -y curl 
RUN apt-get update && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs 
RUN apt install -y mysql-server 

WORKDIR /app

#COPY . .

#dev development / start 本番環境
#CMD ["npm","run","dev"]