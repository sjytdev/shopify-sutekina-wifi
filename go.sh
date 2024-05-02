#!/bin/bash

# テーマディレクトリに移動
cd /usr/src/app/theme

# Shopify CLI を起動（ポート9292でリッスン）
shopify theme dev --host=0.0.0.0 --store sutekina-wifi.myshopify.com