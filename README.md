# 使い方

出来るだけ自動で色々するようになってるので使うのは簡単なはず。

## 準備

動作にはDockerとDocker Composeが必要、Docker
Desktopをインストールすると両方入る。

## 使い方

ダウンロードまたはクローンして、ターミナルで開いて以下を実行。\
初回起動時は色々DLしてくるので時間が掛かる。

http://localhost:7860 にアクセス出来るようになれば起動完了。

```
docker compose build
docker compose up
```

## Cloudflareで外部公開

必要なもの
- Cloudflareアカウント
- 何らかのドメイン(Cloudflareに登録されている必要がある)

1. [Zero Trust](https://one.dash.cloudflare.com/)に移動
2. 左メニューから ネットワーク → トンネル → トンネルを作成する → Cloudflared を選択
3. トンネル名を入力して保存
4. `cloudflared.exe ...` のようなコマンド例が生成されているのでコピー
5. コピーしたコマンドから `install` 以降のランダムなキーを抜き出す
6. `docker-compose.yml` の `TUNNEL_TOKEN` に抜き出したキーを入力
7. 「次へ」で続行
8. 適当なサブドメインを入力してドメインを選択
9. サービスは `HTTP` を選択して `forge:7860` を入力
10. 「トンネルを保存」で設定完了

コンテナを起動すれば設定したドメインにアクセス出来るようになるはず。  
(起動済みの場合は一度停止して再起動)
