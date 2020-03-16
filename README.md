# lineBot 
## 概要
fakerの中のchucknorrisの中身が気になり、lineのbot機能として返信するアプリを作成した。
そのために、外見はスマホとし、メッセージ機能を導入した。  
ログイン画面  
<img src="https://github.com/gen-g-gen/lineBot/blob/master/login-view.png" width="40%">  
チャット画面  
<img src="https://github.com/gen-g-gen/lineBot/blob/master/chat-view.png" width="40%">  



## 目的
・chucknorrisのfakerの中身の確認
・メッセージアプリ作成を通じての復習
・JSのみでの機能実装

## 接続先情報
IPアドレス：http://18.176.7.220/  
email/Pass  
  email    ：test@gmail.com  
  Password ：000000  

## 開発言語
Ruby/Ruby on Rails/js/MySQL/Github/AWS/Visual Studio Code

## 工夫した点
### jsでの非同期通信
  1.jqueryはコードがシンプルな文、バックグラウンドでの処理速度が重い。また、現在下火になり、
    脱jquery化が行われていると知ったため、jsのみでの非同期通信を行ったところ。  
  2.FAcebook,Google認証の導入。ローカル環境ではうまくいったが、本番環境では行われなかった。
    本番環境ではHTTPS通信にしないと導入できないことがわかったため、今後、httos通信、ドメインの取得など
    行っていきたい。

  
## 苦労した点
  jqueryを使っての非同期通信はコマンドが直感的に理解がしやすく実装に手間がかからないが、
  jsのみでの非同期通信は、一つ一つコマンドを確かめながら出ないと理解できなかった。
  ネット記事を参考にしてあが、不明点が多々あったため、遠回りかもしれないが、基礎から学ぶようにした。
  その甲斐もあり、周辺知識も同様に学べた。



## linebot DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|Email|string|null: false|
|password|string|null: false|
|image|text|------|

### Association
- has_many :messages
- has_many :groups_users
- has_many :groups, through: :groups_users

## messageテーブル
|Column|Type|Options|
|------|----|-------|
|message|text|null: false|
|user_id|integer|null:false, foreign_key: true|
|group_id|integer|null:false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|title|integer|null: false|

### Association
- has_many :groups_users
- has_many :users, through: :groups_users
- has_many :messages

## users_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null:false, foreign_key: true|
|group_id|integer|null:false, foreign_key: true|

#### Association
- belongs_to :user
- belongs_to :group
