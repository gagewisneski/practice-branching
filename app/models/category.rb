class Category < ApplicationRecord
  has_many :products

  validates :name, uniqueness: true
  validates :description, :admin_name, :thing1, :thing2, :thing3, presence: true
end
