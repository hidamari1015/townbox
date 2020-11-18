## usersテーブル

| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| email       | string | null: false |
| password    | string | null: false |
| nickname    | string | null: false |
| prefecture  | string | null: false |
| city        | string | null: false |

- has_many :tweets
- has_many :comments

## tweetsテーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| title       | string     | null: false |
| catch_copy  | text       | null: false |
| concept     | text       | null: false |
| user        | references |             |

- belongs_to :users
- has_many :comments, dependent: :destroy

## commentsテーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| text        | text       | null: false |
| user        | references |             |
| tweet       | references |             |

- belongs_to :users
- belongs_to :tweets