class Card < ApplicationRecord
  has_one :user, dependent: :destroy
 validates :user_id,     presence: true
 validates :customer_id, presence: true
 validates :card_id,     presence: true
end
