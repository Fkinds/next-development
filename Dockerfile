FROM scratch
#イメージでコンテナを分ける場合は、2つのappでそれぞれDBを使いたいとき！
#apt-getは古い、最新はapt

ADD rootfs.tar.xz /

RUN apt-get update && apt-get install -y git
RUN apt-get update && apt-get install -y curl 
RUN apt-get update && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt install -y nodejs 
RUN apt-get update && apt-get install -y mariadb-server

WORKDIR /app

CMD ["bash"]