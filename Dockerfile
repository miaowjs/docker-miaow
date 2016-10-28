FROM node:4

# 安装 CNPM
RUN npm install -s -g cnpm --registry=https://registry.npm.taobao.org

# 安装图像处理软件
RUN apt-get update
RUN apt-get install -y --no-install-recommends graphicsmagick
RUN apt-get install -y --no-install-recommends pngquant
RUN cnpm install -g jpegtran-bin

# 安装 ESLint
RUN cnpm install -g eslint@3.8.1
RUN cnpm install eslint@3.8.1
RUN cnpm install eslint-plugin-import@2.0.1
RUN cnpm install eslint-config-airbnb-base@9.0.0

# 安装其他依赖
RUN cnpm install lodash@3.10.1

# 安装 Bower
RUN cnpm install -g bower@1.6.9

# 安装 喵呜
RUN cnpm install -g miaow@5.6.1
RUN cnpm install miaow-development-config
RUN cnpm install miaow-production-config@1.10.2
