class Address < ApplicationRecord
  belongs_to :user, optional: true
  validates  :postal_code, :prefecture, :city, :block_number, presence: true
end
