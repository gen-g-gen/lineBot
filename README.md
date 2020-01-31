# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# lineBot DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|Email|string|null: false|
|password|string|null: false|
### Association
- has_many :messages
- has_many :groups_users
- has_many :groups, through: :groups_users

## messageテーブル
|Column|Type|Options|
|------|----|-------|
|message|text|null: false|
|picture|text|------|
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


## norrisテーブル
|Column|Type|Options|
|------|----|-------|
|message|text|null: false|
|user_id|integer|null:false, foreign_key: true|
|group_id|integer|null:false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## pockemonテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|null: false|
|form|text|null: false|
|type|text|null: false|
|status|text|null: false|
|h|text|null: false| HP
|a|text|null: false| アタック
|b|text|null: false| 防御
|c|text|null: false| とくこう
|d|text|null: false| とくぼう
|s|text|null: false| 素早さ

|user_id|integer|null:false, foreign_key: true|
|group_id|integer|null:false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group
