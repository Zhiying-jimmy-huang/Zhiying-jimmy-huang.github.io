#!/bin/bash
# 下载并解压 Pandoc 到项目目录下的 ./pandoc 文件夹
yum install wget
mkdir pandoc
wget -qO- https://github.com/jgm/pandoc/releases/download/2.11.1.1/pandoc-2.11.1.1-linux-amd64.tar.gz | tar xvzf - --strip-components 1 -C ./pandoc
# 将 Pandoc 的路径添加到 PATH 环境变量中
export PATH="./pandoc/bin:$PATH"
# 执行 Hexo 的构建命令
npm run build