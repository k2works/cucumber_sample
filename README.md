# Rails3でBDD
## 目的
## 前提条件
## 手順
## RailsにおけるBDD
### 外側からのRails開発
1. １つのシナリオに焦点をあわせる
2. 失敗するステップ定義を書く
3. 失敗するビューのスペックを書く
4. ビューを実装する
5. ビューをリファクタリングする
6. ステップが成功したら
7. リファクタリング
### Rails3プロジェクトのセットアップ

`$ rails new cucumber_sample`

`$ cd cucumber_sample`

Gemfile

`$ bundle install`

`$ rails g rspec:install`

`$ rails g cucumber:install`

`$ rake db:migrate`

`$ rake db:test:prepare`

`$ rake spec`

`$ rake cucumber`

## 参考
