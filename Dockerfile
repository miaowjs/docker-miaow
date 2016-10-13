FROM node:4

RUN apt-get update
# 安装 CNPM
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
# 安装图像处理软件
RUN apt-get install -y graphicsmagick
RUN apt-get install -y pngquant
RUN cnpm install -g jpegtran-bin
