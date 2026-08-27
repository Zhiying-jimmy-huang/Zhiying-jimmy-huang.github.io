#!/bin/bash
# 下载并解压 Pandoc
mkdir -p pandoc
if command -v curl &> /dev/null; then
  curl -L https://github.com/jgm/pandoc/releases/download/2.11.1.1/pandoc-2.11.1.1-linux-amd64.tar.gz | tar xvzf - --strip-components 1 -C ./pandoc
elif command -v wget &> /dev/null; then
  wget -qO- https://github.com/jgm/pandoc/releases/download/2.11.1.1/pandoc-2.11.1.1-linux-amd64.tar.gz | tar xvzf - --strip-components 1 -C ./pandoc
else
  echo "Neither curl nor wget found. Cannot download Pandoc."
  exit 1
fi
export PATH="./pandoc/bin:$PATH"
npm run build