
# ProtoSpaceのER図

## user テーブル

| Colum              | Type | Option     |
|--------------------|------|------------|
| email              |string|null: false |
| encrypted_password |string|null: false |
| name               |string|null: false |
| profile            |text  |null: false |
| occupation         |text  |null: false |
| position           |text  |null: false |

## Association

- has_many :prototypes
- has_many :comments

## prototypes テーブル

| Colum              | Type      | Option                       |
|--------------------|-----------|------------------------------|
| title              |string     |null: false                   |
| catch_copy         |text       |null: false                   |
| concept            |text       |null: false                   |
| user               |references |null: false, foreign_key: true|


### Association

- belong_to :user
- has_many :comments

## comments テーブル

| Colum              | Type      | Option                       |
|--------------------|-----------|------------------------------|
| content            |text       |null: false                   |
| prototype          |references |null: false                   |
| user               |references |null: false, foreign_key: true|

- belongs_to :prototype
- belongs_to :user