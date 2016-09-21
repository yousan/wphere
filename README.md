# 目的
WordPressを簡単にインストールするためのスクリプトです。
WP-CLIでWordPressの初期設定をする際のコマンドをまとめています。
データベース設定などの情報を.envファイルに書いておきwphereを実行すればWordPressのインストールが完了します。

# 使い方
1. wphereをダウンロードします。
ex.) `git clone https://github.com/yousan/wphere.git ~/git/`
2. ドキュメントルートとなるディレクトリを作成します。
ex.) `mkdir ~/public_html/example.com`
3. .env.sampleを.envとしてコピーしてきます。
ex.) `cp ~/git/wphere/.env.sample ~/public_html/example.com/.env`
4. .envファイルを編集します。
5. wphereを実行します。
ex.) `~/git/wphere/wphere`
 
# 要件
WP-CLI 0.24 以上をインストールしてください。

# What's this?

Download and install WordPress into current directory.

```
wp core download
wp core config
wp core install
```

# How to use

1. Download wphere
2. Create a document root directory such as public_html/example.dev 
3. Copy and rename .env.sample to .env
4. Write DB informations to .env
5. Call wphere


## Download wphere, move and +x

```
$ git clone https://github.com/yousan/wphere.git
$ mv wphere/wphere ~/sh/
$ chmod +x ~/sh/wpehre
```

## Create a document root directory such as public_html/example.dev 

```
$ mkdir ~/public_html/example.dev
$ cd ~/public_html/example.dev/
```

## Copy and rename .env.sample to .env

```
$ cp ~/git/wphere/.env.sample ./.env
```

## Write DB informations to .env

```
$ vi .env
```

## Call wphere

```
$ wphere
```

## Requires

* WP-CLI
