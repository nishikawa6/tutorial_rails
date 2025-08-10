FROM ruby:3.2.2-alpine

RUN apk update && \
    apk upgrade && \
    apk add --no-cache g++ make mysql-client mysql-dev tzdata

# コンテナを起動したときの作業ディレクトリを/appに設定
WORKDIR /app

COPY Gemfile .

# Gemfileに記載されているgemをインストール
RUN bundle install
