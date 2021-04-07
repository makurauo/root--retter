# テーブル設計

## usersテーブル
| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| nick_name          | string  | null: false               |
| genre_id           | integer | null: false               |
| self_info          | string  |                           |

### Association
- has_many :artists
- has_many :comments

## artistsテーブル
| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| name        | string     | null: false       |
| explanation | text       | null: false       |
| user        | references | foreign_key: true |

### Association
- has_many :comments
- belongs_to :user

## commentsテーブル
| Column   | Type       | Options            |
| ---------| ---------- | ------------------ |
| text     | text       | null: false        |
| user_id  | references | foreign_key: true  |

### Association
- belongs_to :user
- belongs_to :artist