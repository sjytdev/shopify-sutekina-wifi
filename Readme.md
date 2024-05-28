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

## Shopifyログイン
shopifyプレビューサーバー起動時などにログインを求めれた場合

To run this command, log in to Shopify Partners.  
Press any key to open the login page on your browser  
上記メッセージの表示後にキー押下することでURLが表示される。
URLにアクセスしログイン、最後に127.0.0.1へのリダイレクトでエラーになるので
ブラウザのURL欄のURLをコピー
ターミナルでCtrl + zを押して中断する
'''
curl "コピーしたURL" &
fg
'''
※上2行を1行ずつ実行
loginの文字列が出たらOK
Ctrl + cを押して処理を終了