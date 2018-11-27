class Cart < ApplicationRecord
  belongs_to :user_id
  has_and_belongs_to_many :carts
end
