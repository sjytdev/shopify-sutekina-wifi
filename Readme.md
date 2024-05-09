# すてきなWiFi Shopifyサイトのローカル開発環境

## コンテナのビルドと起動

```
docker-compose up -d --build
```

## テーマのローカルプレビューサーバー起動

```
# shopifyコンテナに入って
docker-compose exec -it shopify bash
# テーマフォルダに移動して
cd theme

shopify theme dev --host=0.0.0.0 --store sutekina-wifi.myshopify.com
```
※--host=0.0.0.0 のオプションを付けないとコンテナ外からブラウザアクセスできない

# 上記の自動実行
```
# shopifyコンテナに入って
# ※テーマフォルダに移動する前に実行
bash go.sh
```

## ローカルプレビュー
http://localhost:9292


## テーマのダウンロード
```
shopify theme pull --store=sutekina-wifi.myshopify.com
```

## ローカルの編集内容をshopifyのストアに反映させる
```
shopify theme push
```