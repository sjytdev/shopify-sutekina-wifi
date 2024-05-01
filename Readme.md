docker-compose up -d --build
docker-compose exec -it shopify bash

# テーマのローカルプレビューサーバー起動
コンテナに入って
```
shopify theme dev --host=0.0.0.0 --store sutekina-wifi.myshopify.com
```

# テーマのダウンロード
```
shopify theme pull --store=sutekina-wifi.myshopify.com
```