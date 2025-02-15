# Stable Diffusion Forge on Docker (with Cloudflare Tunnel)

大きめのDockerのイメージを扱うのでディスク空き容量は50GB以上を推奨する。

## 準備

動作にはDockerとDocker Composeが必要。

Docker Desktopをインストールすると両方入るので便利。

## 使い方

ダウンロードまたはクローンして、ターミナルで開いて以下を実行。\
初回起動時は色々DLしてくるので時間が掛かる。

```bash
# イメージの構築 (初回のみ必要)
docker compose build

# 起動 (Ctrl+Cで終了)
docker compose up

# 起動 / 終了 (バックグラウンド実行)
docker compose up -d
docker compose stop
```

http://localhost:7860 にアクセス出来るようになれば起動完了。

## Cloudflareで外部公開

必要なもの

- Cloudflareアカウント
- 何らかのドメイン (Cloudflareに登録されている必要がある)

ドメインは .uk とか安いので雑に買うという手もある。

### Cloudflare側の設定

1. [Zero Trust](https://one.dash.cloudflare.com/)に移動してアカウントを選択
2. 左メニューから ネットワーク → トンネル を選択
3. トンネルを作成する → Cloudflared を選択
4. トンネル名を入力して保存
5. `cloudflared.exe ...` のようなコマンド例が生成されているので控えておく
6. 「次へ」で続行
7. パブリック ホスト名の設定
   - パブリック ホスト名
     - サブドメイン: 適当でOK (`sd`とかにしておくと短い)
     - ドメイン: 持ってるやつを設定
     - パス: 空欄でOK
   - サービス
     - タイプ: HTTP
     - URL: `forge:7860`
8. 「トンネルを保存」で設定完了

### Docker側の設定

1. `docker-compose.yml` でコメントアウトされている `tunnel` 部分をアンコメント
2. 先程控えたコマンド例から `install` 以降のランダムな文字列(キー)を抜き出す
3. `.env.example` をコピーして `.env` ファイルを作成
4. `TUNNEL_TOKEN=` の末尾にキーを入力

コンテナを起動すれば設定したドメインにアクセス出来るようになる。(起動済みの場合は一度停止してから起動)
