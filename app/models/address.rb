class Address < ApplicationRecord
  belongs_to :user, optional: true
  validates :user_id, :postal_code, :prefecture, :city, :block_number, :apartment_name, presence: true

end
