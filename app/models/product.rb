class Product < ApplicationRecord

  validates :name , presence: true
  validates :code, presence: true, uniqueness: true
  validates :price_cents, presence: true
  validates :quantity, presence: true
end
