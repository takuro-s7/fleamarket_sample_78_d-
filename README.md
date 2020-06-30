# README

usersテーブル
|nickname|string| null:false
|email|string| null:false, unique: true, 
|password|string| null:false
|password_conform|string| null:false
|first_name|string| null:false
|last_name|string| null:false
|first_name_kana|string| null:false
|last_name_kana|string| null:false
|birthday|date| null:false
Association
- belongs_to :addresses
- belongs_to :cards
- has_many :products


addressesテーブル
|user_id|references|null:false,foreign_key: true|
|postal_code|string|null: false
|prefecture_id|string|null: false, foreign_key: true|
|city|string|null: false|
|block_number|string|null: false|
|apartment_name|string|
Association
- belongs_to :user
- has_many :products

productsテーブル
|name|string| null:false
|description|Text|null: false
|price|Integer| null:false
|condition|Integer| null:false
|status|Integer| null:false
|brand|string|
|send_price|Integer| null:false
|buyer_id|Integer| null:false
|category_id|Integer| null:false, foreign_key: true
|user|references|index: true, foreign_key: true|
|shipping_date|string| null:false, foreign_key: true
|prefecture|integer| null:false
|size|string| null: false
Association
- belongs_to :user
- belongs_to :cards
- belongs_to :category
- has_many :images


cardsテーブル
|user_id|references| null:false, foreign_key: true
|customer_id|string| null:false
|card_id|string| null:false
Association
- belongs_to :user

imagesテーブル
image|text|null: false
product|references| null: false, 
Association
- belongs_to :products

categoriesテーブル
name| string | null: false
ancestry| string
Association
- has_many:products

https://files.slack.com/files-pri/T1MLERC4C-F0169JS1U4T/____________________________2020-06-30_15.22.08.png
