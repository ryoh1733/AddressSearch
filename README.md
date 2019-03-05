# AddressSearch

## 機能
- 郵便番号のCSV ([http://www.post.japanpost.jp/zipcode/dl/kogaki/zip/ken_all.zip](http://www.post.japanpost.jp/zipcode/dl/kogaki/zip/ken_all.zip))をデータソースとし、住所レコードのインデックスファイルを作成する。

- 与えられた文字列中の文字をすべて含む住所レコードを上記で作成したインデックスを用いて検索し出力する。

## 環境
Ruby 2.5.3

## 実行方法
- `git clone git@github.com:ryoh1733/AddressSearch.git`
- `bundle install`
- `ruby main.rb [検索文字列]`
