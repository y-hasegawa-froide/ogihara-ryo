# [Ogihara Ryo's Web site](http://ogihara-ryo.herokuapp.com)

## 開発環境
- Ruby 2.3.1
- Rails 4.2.6

## インストール
```
cp config/database.yml.example config/database.yml
bundle
rake db:create
rake db:migrate
```

## 仕様
[https://github.com/ogihara-ryo/ogihara-ryo/wiki/設計思想メモ](https://github.com/ogihara-ryo/ogihara-ryo/wiki/設計思想メモ)

## デプロイ
master ブランチを変更すると、wercker により自動でデプロイされます。

[http://ogihara-ryo.herokuapp.com](http://ogihara-ryo.herokuapp.com)

## ライセンス
[MIT License](https://github.com/ogihara-ryo/ogihara-ryo/blob/master/LICENSE)
