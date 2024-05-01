# Node.js と npm が含まれる公式の Node イメージをベースとして使用
FROM node:latest

# Ruby イメージから Ruby をコピー
COPY --from=ruby:latest /usr/local/ /usr/local/

# 必要なパッケージをインストール
RUN apt-get update && apt-get install -y \
    xdg-utils \
    curl \
    gcc \
    g++ \
    make \
    ruby-full \
    ruby-dev \
    git \
    nginx \
    net-tools \
    lsof \
    && rm -rf /var/lib/apt/lists/*

# Shopify CLI をインストール
RUN npm install -g @shopify/cli

# ポートの公開
EXPOSE 3456 9292

# 作業ディレクトリの設定
WORKDIR /usr/src/app

# コンテナ起動時に bash を実行
ENTRYPOINT ["/bin/bash"]
