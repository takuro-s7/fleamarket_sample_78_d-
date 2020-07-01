class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :user_id,     null: false, foreign_key: true
      t.string  :postal_code, null: false
      t.string  :prefecture,  null: false
      t.string  :city,        null: false
      t.string  :block_number, null: false
      t.string  :apartment_name
      t.timestamps
    end
  end
end
