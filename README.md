# アプリケーション名
 
eMatch Pro
 
# アプリケーション概要
 
エンジニアマッチングアプリ

・会員登録、プロフィール設定

・検索機能

・チャット機能
 
# URL
 
https://e-matching-app.herokuapp.com/
 
# テスト用アカウント
 
*◆Basic認証*

PASS: mita

ID: 2018 

*◆Login*

email: tests@gmail.com

pass: aaa123

 
# 利用方法
 
*◆新規会員登録*

「sign up」 新規登録画面へ

会員情報記入 全て必須事項 「会員登録」クリック

プロフィール設定 全て任意 「登録完了」クリック

*◆プロフィール編集*

 右上に自分の名前をクリック マイページへ

 「プロフィールの編集」をクリック

 任意の内容へ記入 「編集を完了する」をクリック

*◆ユーザー検索*

・名前で検索

 期待するユーザー名を記入後、「検索」クリック

・絞り込みで検索

 「性別」、「役割」、「都道府県」はプルダウンリストより任意で選択

 「使用言語」は、テキスト形式で絞り込みたい言語名を任意で入力

 指定終了後、「検索」クリック

*◆チャット機能*

ユーザーページ「チャットルームへ」ボタンより入室

・メッセージ投稿

任意のメッセージを下部テキスト入力欄に入力、「メッセージ送信」

・画像を添付

「画像添付：ファイルを選択」 より添付したいファイルを選択、「メッセージ送信」
 
# 目指した課題解決
 
*対象*：エンジニアの方々

*目的*：エンジニア仲間を探す方々の、仲間探しの効率化が目的

エンジニアの仲間同士の企業、フリーランスや副業が増加傾向の今、チームで効率良く何かを始めたくても、多忙な日々の中で最適なパートナーを探すのは難しい。そういった人々が効率よく相性の良いパートナーと巡り会うことができることを意識し作成しました。
 
# 洗い出した要件
 
## SNS認証
*目的*：ユーザーアカウント登録方法の選択肢を増やす。

*詳細*：SNSアカウント（Googleアカウン、twitterアカウント）を利用したログイン方法を選択肢として追加する。

*ストーリー（ユースケース）*

・新規会員登録を「手打ち入力」「Googleアカウントを利用」「twitterアカウントを利用」の3つから選べるようにする 

・SNSアカウントを選択した場合、既にパスワードは入力されてる状態で表示される

##

## 会員登録機能
*目的*：新規会員登録、ログイン、ログアウトが行えるようにする。

*詳細*：deviseによる会員登録機能を実装する。

*ストーリー（ユースケース）*

・会員のプロフィール設定(名前、住所、年齢、主な役柄、主要言語、求める人物像）を入力し、新規会員登録をする。

## 会員情報編集機能
*目的*：会員が情報の修正と、追加で自己紹介したいことの編集を行えるようにする。

*詳細*：会員情報の一部編集、追加編集機能を実装する。

*ストーリー（ユースケース）*

・このサイトを必要としなくなった人が、登録した会員情報を削除する

## チャット機能
*目的*：会員同士がお互いのフィーリングを確かめられるよう、チャットを行えるようにする。

*詳細*：個人チャットを行えるようにする。

*ストーリー（ユースケース）*

・個人でチャットによる交流を行うことにより、お互いの意思を確認できる。

## 検索、絞り込み機能
*目的*：会員が求める人物像を探せるよう、絞り込み検索を行えるようにする。

*詳細*：複数選択の絞り込みによる、会員の検索機能を実装する。

*ストーリー（ユースケース）*

・性別/主要言語/主な役柄などの絞り込み検索でができ、求める人物像とマッチする会員を見つけることができる。

## 通知機能
*目的*：会員に新規チャットメッセージが入ると通知がいくようにする。

*詳細*：ユーザー１がユーザー２にメッセージを送信した際、ユーザー２にユーザー１がメッセージをしたと言う通知が来る。一覧表示で通知のあったユーザーの画像にアクションが発生する。

*ストーリー（ユースケース）*

・新しいメッセージが誰からきたかわかるようになり、新規メッセージに気づかないと言うことがなくなる。

## いいね機能
*目的*：気になる会員にいいねをして、アピールすることができるようにする。

*詳細*：いいね機能の実装をする。

*ストーリー（ユースケース）*

・気になる会員の紹介ページでいいねを押すと、カウントが＋１され、いいねした人の情報を、いいねを受けた人が閲覧できる。

## 足跡機能
*目的*：会員の自己紹介ページに、足跡機能をつける。

*詳細*：ある会員が別の会員の紹介ページを表示した際、紹介ページの会員に閲覧人数と、訪れた会員の情報が表示されるようにする。

*ストーリー（ユースケース）*

・足跡機能があることで、誰が自分のプロフィールを閲覧したかがわかり、受動的に足跡をつけた人のプロフィールを閲覧する。

## 退会処理機能
*目的*：もう使わなくなった会員の退会を行えるようにする。

*詳細*：退会機能の実装。

*ストーリー（ユースケース）*

・このサイトを必要としなくなった人が、登録した会員情報を削除する
 
# 実装した機能についてのGIFと説明
 
後日記入予定
 
# 実装予定の機能

通知機能

足跡機能

いいね機能

退会処理機能

フォロー、フォロワー機能

新規の方でもわかりやすいレイアウトへの調整

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

| Column     | Type       | Options        |
| ---------- | ---------- | -------------- |
| id         | integer    | null: false    |
| user_id    | integer    | null: false    |
| pushed_id  | integer    | null: false    |

### Association

- belongs_to user
- has_many notifications, dependent: :destroy

## Notificationsテーブル

| Column        | Type       | Options        |
| ------------- | ---------- | -------------- |
| id            | integer    | null: false    |
| visiter_id    | integer    | optional: true |
| visited_id    | integer    | optional: true |
| like_id       | integer    | optional: true |
| message_id    | integer    | optional: true |

### Association

- belongs_to user
- belongs_to like
- belongs_to message

# ローカルでの動作方法

後日記入予定