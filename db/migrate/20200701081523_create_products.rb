class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string     :name,        null: false
      t.text       :description, null: false
      t.integer    :price,       null: false
      t.integer    :condition,   null: false
      t.integer    :status,      null: false
      t.string     :brand
      t.integer    :send_price,  null: false
      t.integer    :category_id, null: false
      t.references :user,  null: false,foreign_key:true
      t.integer    :shipping_date,  null: false
      t.integer    :prefecture_id, null: false
      t.string     :size, null: false
      t.timestamps
    end
  end
end
