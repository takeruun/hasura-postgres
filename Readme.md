# 立ち上げ方法
前提：
- dockerがインストールされていること
- hasura cliがインストールされていること

## 1. hasura 初期化
hasura ディレクトリで初期化
```
$ hasura init hasura
```

## 2. 生成された config.yaml の編集
下記に編集
```yaml
# hasura/config.yaml

version: 3
endpoint: http://localhost:8080
metadata_directory: hasura/metadata
migrations_directory: hasura/migrations
seeds_directory: hasura/seeds
actions:
  kind: synchronous
  handler_webhook_baseurl: http://localhost:3000
```

## 3. hasura console　起動
ルートディレクトリで下記コマンドを実行
```
$ docker-compose up -d

$ hasura console --admin-secret=secret --skip-update-check
```

※マイグレーション自動生成は、hasura console で行うこと