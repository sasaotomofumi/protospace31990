## users　テーブル

| Column    | Type   | Options     |
| --------- | ------ | ----------- |
| email     | string | null: false |
| password  | string | null: false |
| name      | string | null: false |
| occupation| text   | null: false |
| position  | text   | null: false |

## Association

-has_many :prototypes
-has_many :comments

## prototypes テーブル

| Column    | Type      | Options                        |
| --------- | --------- | ------------------------------ |
| title     | string    | null: false                    |
| catch_copy| text      | null: false                    |
| user      | references| null: false, foreign_key: true |

-belongs_to :user
-has_many :comments

## comments　テーブル

| Column   | Type     | Options                       |
| -------- | ------   | ----------------------------- |
| text     | text     | null:false                    |
| user     | reference| null: false foreign_key: true |
|prototype | reference| null: false foreign_key: true |

## Association
-belongs_to :user
-belongs_to :prototype