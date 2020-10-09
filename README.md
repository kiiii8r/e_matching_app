# テーブル設計

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

- has_one like
- has_one profile
- has_many room_users 
- has_many messages


## Profiles テーブル

| Column            | Type       | Options                                            |
| ----------------- | ---------- | -------------------------------------------------- |
| id                | integer    |                                                    |
| user_id           | integer    | uniqueness: true, foreign_key: true, null: false   |
| prefecture_id     | references |                                                    |
| introduction      | text       |                                                    |
| hobby             | text       |                                                    |
| target            | text       |                                                    |
| language1_id      | references |                                                    |
| language2_id      | references |                                                    |
| language3_id      | references |                                                    |
| other_language    | text       |                                                    |
| role_id           | references |                                                    |
| pros              | text       |                                                    |
| defect            | text       |                                                    |

### Association

- has_one user


## Room_users テーブル

| Column  | Type       | Options     |
| ------- | ---------- | ----------- |
| id      | integer    | null: false |
| room_id | integer    | null: false |
| user_id | integer    | null: false |

### Association

- belongs_to user
- belongs_to room


## Messages テーブル

| Column        | Type       | Options      |
| ------------- | ---------- | ------------ |
| id            | integer    | null: false  |
| room_id       | integer    | null: false  |
| user_id       | integer    | null: false  |
| message       | text       | null: false  |

### Association

- belongs_to user
- belongs_to room


## Likes テーブル

| Column        | Type       | Options        |
| ------------- | ---------- | -------------- |
| id            | integer    | null: false    |
| user_id       | integer    | null: false    |
| pushed_id     | integer    | null: false    |

### Association

- has_one user


## Rooms テーブル

| Column     | Type       | Options        |
| ---------- | ---------- | -------------- |
| id         | integer    | null: false    |

### Association

- has_many room_users 
- has_many messages