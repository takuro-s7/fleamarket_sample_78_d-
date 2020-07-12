class ChangeDataSizeToProduct < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :size, :integer
  end
end
