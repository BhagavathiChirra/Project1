class Product < ApplicationRecord

  geocoded_by :address
  after_validation :geocode

  has_many :carts
  has_many :users, through: :carts
  belongs_to :category, optional: true

  validates :name, :price, :category_id, presence: true
end
