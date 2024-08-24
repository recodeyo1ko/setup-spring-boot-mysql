# 環境構築用備忘録

## 環境概要

- Spring Boot + MySQL on Docker

## 環境構築手順

- env ファイル作成
- Docker コンテナ起動

  - Spring Boot の起動
    - target ディレクトリに jar ファイルがなければ一度コンテナ内でビルド

- spring-boot の application.properties に MySQL の接続情報を設定
