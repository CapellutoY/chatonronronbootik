class Item < ApplicationRecord
  validates :title, :description, :price, :image_url, presence: true
  has_and_belongs_to_many :orders
  has_and_belongs_to_many :carts
end
