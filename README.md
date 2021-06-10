# テーブル設計

## usersテーブル

| column             | Type    | Options                  |
| ------------------ | ------- | ------------------------ |
| nickname           | string  | null: false              |
| email              | string  | null: false, unique:true |
| encrypted_password | string  | null: false              |

### Association
- has_many: :trainings


## trainingsテーブル

| column             | Type       | Options                        |
| ------------------ | ---------- | -------------------------------|
| parts_outline_id   | integer    | null: false                    |
| parts_details_id    | integer    | null: false                    |
| start_time          | datetime   | null: false                    |
| weight             | integer    | null: false                    |
| number_of_times    | integer    | null: false                    |
| text               | text       | null: false                    |
| user               | references | null: false, foreign_key: true |


### Association
- belongs_to: :user



## relationshipsテーブル

| column        | Type       | Options                        |
| ------------- | ---------- | -------------------------------|
| user_id       | integer    | null: false, foreign_key: true |
| follow_id     | integer    | null: false,foreign_key:{to_table: users} |


### Association
- belongs_to: :user
- has_one: :follow, class_name: 'User'

