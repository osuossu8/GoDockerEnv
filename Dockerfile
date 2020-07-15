# ベースとなるDockerイメージ指定
FROM golang:latest

# vim のインストール
RUN apt update && apt install vim -y

# ~/.bashrc
RUN echo "export PS1='\[\e[36m\]kaeru\[\e[0m\] \[\e[32m\]docker-env\[\e[0m\] \[\e[33m\]\w\[\e[0m\] $ '" >> ~/.bashrc && \
    echo "export LANG='ja_JP.UTF-8'" >> ~/.bashrc && \
    echo "alias vi='vim'" >> ~/.bashrc

# コンテナ内に作業ディレクトリを作成
RUN mkdir /go/src/work
# コンテナログイン時のディレクトリ指定
WORKDIR /go/src/work
# ホストのファイルをコンテナの作業ディレクトリに移行
ADD . /go/src/work
