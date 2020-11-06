![Alt text](images/title.png "title")
 
# eMatch Pro

## フリーランス仲間や同業者とのコミュニケーションを生み出す
## エンジニアのためのマッチングサイトです。
 
# URL
 
https://e-matching-app.herokuapp.com/
 
# テスト用アカウント
 
- Basic認証
  - PASS: mita
  - ID: 2018 

- Login
  - テストユーザー１
    - email: tests@gmail.com
    - pass: aaa123

  - テストユーザー２
    - email: tests@gmail.com
    - pass: aaa123

 
# 機能紹介


- プロフィール機能

- ユーザー検索機能
  - ユーザー名の曖昧検索
  - プロフィールの記述にある使用言語名より曖昧検索
  - 性別、役割、都道府県でのプルダウン検索

- 通知機能
  - メッセージ通知
  - フォロー通知

- フォロー機能

- メッセージ機能
  - 各ユーザー対ユーザー毎のメッセージ環境を作成

# その他工夫点

- 非同期処理
  - スクロール時のヘッダーバー固定
  - チャット画面のメッセージ内容の最後尾まで自動スクロール
  - 新規会員登録時の誕生日入力後年齢自動取得
 

# 目指した課題解決
 
対象：エンジニアの方々

目的：エンジニア仲間を探す方々の、仲間探しの効率化が目的

エンジニアの仲間同士の企業、フリーランスや副業が増加傾向の今、チームで効率良く何かを始めたくても、多忙な日々の中で最適なパートナーを探すのは難しい。そういった人々が効率よく相性の良いパートナーと巡り会うことができることを意識し作成しました。
 
 
# 今後の課題

- フォロー機能の充実

- メッセージ機能の非同期通信(ActionCable他)

- お気に入り機能(React)

- Docker導入

- 足跡機能

- 退会処理機能

- 新規の方でもわかりやすいレイアウトへの調整

- 本番環境のAWS化

- CircleCIによるマイグレーション・デプロイの自動化

- 有料会員機能(API:Payjp)
  - 有料会員専用複数人数チャットルーム作成

# データベース設計

## Users テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| id               | integer    | null: false                    |
| nickname         | string     | null: false                    |
| first_name       | string     | null: false                    |
| last_name        | string     | null: false                    |
| first_name_kana  | string     | null: false                    |
| last_name_kana   | string     | null: false                    |
| email            | string     | null: false                    |
| password         | string     | null: false                    |
| age              | integer    | null: false                    |
| gender           | string     | null: false                    |
| birth_day        | date       | null: false                    |

### Association

- has_one  profile
- has_many room_users 
- has_many messages
- has_many rooms, through: :room_users
- has_many likes
- has_many notifications


## Profiles テーブル

| Column            | Type       | Options                                            |
| ----------------- | ---------- | -------------------------------------------------- |
| id                | integer    |                                                    |
| user_id           | references | uniqueness: true, foreign_key: true, null: false   |
| prefecture_id     | references |                                                    |
| introduction      | text       |                                                    |
| hobby             | text       |                                                    |
| target            | text       |                                                    |
| language          | text       |                                                    |
| role_id           | references |                                                    |
| pros              | text       |                                                    |
| defect            | text       |                                                    |

### Association

- has_one user


## Room_users テーブル

| Column  | Type       | Options           |
| ------- | ---------- | ----------------- |
| id      | integer    | null: false       |
| room_id | references | foreign_key: true |
| user_id | references | foreign_key: true |

### Association

- belongs_to user
- belongs_to room


## Messages テーブル

| Column        | Type       | Options            |
| ------------- | ---------- | ------------------ |
| id            | integer    | null: false        |
| room_id       | references | foreign_key: true  |
| user_id       | references | foreign_key: true  |
| message       | text       | null: false        |

### Association

- belongs_to user
- belongs_to room
- has_many notifications

## Rooms テーブル

| Column     | Type       | Options        |
| ---------- | ---------- | -------------- |
| id         | integer    | null: false    |

### Association

- has_many room_users 
- has_many messages
- has_many users, through: :room_users

## Likes テーブル

| Column     | Type       | Options                          |
| ---------- | ---------- | -------------------------------- |
| user_id    | references | null: false, foreign_key: true   |
| pushed_id  | references | null: false, foreign_key: true   |

### Association

- belongs_to user
- has_many notifications

## Notificationsテーブル

| Column        | Type       | Options                           |
| ------------- | ---------- | --------------------------------- |
| id            | integer    | null: false                       |
| visiter_id    | references | optional: true, foreign_key: true |
| visited_id    | references | optional: true, foreign_key: true |
| like_id       | references | optional: true, foreign_key: true |
| message_id    | references | optional: true, foreign_key: true |

### Association

- belongs_to user
- belongs_to like
- belongs_to message

# ER図

![Alt text](images/ER.png "ER")


# 開発環境

- OSとバージョン
	- Catalina 10.15.6

- Rubyバージョン
	- ruby 2.6.5p114

- RubyGemsバージョン
	- 3.0.3

- Railsバージョン
	- Rails 6.0.3.4

- herokuバージョン
	- heroku/7.46.0 darwin-x64 node-v12.16.2

- AWS
  - EC2
