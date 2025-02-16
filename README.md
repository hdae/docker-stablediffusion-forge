# Stable Diffusion Forge on Docker (with Cloudflare Tunnel)

大きめのDockerのイメージを扱うのでディスク空き容量は50GB以上を推奨する。

## 特徴

Docker上で実行されるのでセキュリティ的に比較的安心。

## 既知の問題

WSL2の仕様上、モデルのロードにちょっと時間がかかります。(illustriousなどの6.5GBモデルで4分程度?)

## 準備

動作にはDockerとDocker Composeが必要になる。  
(Docker Desktopをインストールすると両方入る)

## 簡単な使い方

1. `build.bat` を実行して待つ。
   - 初回やアップデート時のみ必要な操作です。
   - 正常終了すると自動で閉じられます。
2. `start.bat` を実行する。
   - 初回起動時は少し時間がかかります。

http://localhost:7860 にアクセス出来るようになれば起動完了。

2回目以降は `start.bat` を実行するだけになります。

## 停止方法

ターミナルを閉じれば自動で止まるはず。

止まらなかった場合は `stop.bat` を実行すると止まります。  
Docker Desktop側の停止ボタンで止めることもできます。

## Cloudflareで外部公開する場合

`start.bat` の代わりに `start-dynamic.bat` を起動する。

暫く待つと以下のような表示が出ます、このURLが外部公開用です。

```
+--------------------------------------------------------------------------------------------+
|  Your quick Tunnel has been created! Visit it at (it may take some time to be reachable):  |
|  https://*******-*******-*******-*******.trycloudflare.com                                 |
+--------------------------------------------------------------------------------------------+
```

## Cloudflareで外部公開する場合 (固定URL)

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

1. 先程控えたコマンド例から `install` 以降のランダムな文字列(キー)を抜き出す
2. `.env.example` をコピーして `.env` ファイルを作成
3. `TUNNEL_TOKEN=` の末尾にキーを入力

`start.bat` の代わりに `start-static.bat` を起動する。

設定に問題なければ、暫く待つと設定したドメインにアクセス出来るようになる。
