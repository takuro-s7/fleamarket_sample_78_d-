# README

usersテーブル
|Column|Type|Options|
|------|----|-------|
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
- has_one :address
- has_one :card
- has_many :products


addressesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null:false,foreign_key: true|
|postal_code|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|block_number|string|null: false|
|apartment_name|string|
Association
- belongs_to :user
- has_many :products

productsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string| null:false
|description|text|null: false
|price|integer| null:false
|condition|integer| null:false
|status|integer| null:false
|brand|string|
|send_price|integer| null:false
|buyer_id|integer| null:false
|category_id|integer| null:false, foreign_key: true
|user|references|null:false, foreign_key: true|
|shipping_date|integer| null:false
|prefecture|integer| null:false
|size|string| null: false
Association
- belongs_to :user
- belongs_to :category
- has_many :images


cardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references| null:false, foreign_key: true
|customer_id|string| null:false
|card_id|string| null:false
Association
- belongs_to :user

imagesテーブル
|Column|Type|Options|
|------|----|-------|
image|text|null: false
product|references| null: false, foreign_key: true
Association
- belongs_to :product

categoriesテーブル
|Column|Type|Options|
|------|----|-------|
name| string | null: false
ancestry| string
Association
- has_many:products



