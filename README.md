# テーブル設計

## Users テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| id               | integer    | null: false                    |
| name             | string     | null: false                    |
| email            | string     | null: false                    |
| password         | integer    | null: false                    |
| age_id           | references | null: false, foreign_key: true |
| gender_id        | references | null: false, foreign_key: true |
| prefecture_id    | references | null: false, foreign_key: true |
| language_id      | references | null: false, foreign_key: true |
| role_id          | references | null: false, foreign_key: true |
| image            | strings    |                                |

### Association

- has_one like
- has_one profile
- has_many room_users 
- has_many messages


## Profiles テーブル

| Column          | Type       | Options                         |
| --------------- | ---------- | ------------------------------- |
| id              | integer    | null: false                     |
| user_id         | integer    | null: false                     |
| introduction    | text       | null: false                     |
| hobby           | text       | null: false                     |
| target          | text       | null: false                     |
| language_id     | references | null: false, foreign_key: true  |
| role_id         | references | null: false, foreign_key: true  |
| pros            | integer    | null: false                     |
| defect          | integer    | null: false                     |

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