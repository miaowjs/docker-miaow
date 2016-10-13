FROM node:4

RUN apt-get update
# 安装 CNPM
RUN npm install -s -g cnpm --registry=https://registry.npm.taobao.org
# 安装图像处理软件
RUN apt-get install -y --no-install-recommends graphicsmagick
RUN apt-get install -y --no-install-recommends pngquant
RUN cnpm install -s -g jpegtran-bin
