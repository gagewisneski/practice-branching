class Product < ApplicationRecord
  belongs_to :category

  validates :name, uniqueness: true
  validates :description, :price, :supplier, :category_id, presence: true
end
