class Group < ApplicationRecord
  has_many :contacts, through: :contact_groups
  has_many :category_products
end
