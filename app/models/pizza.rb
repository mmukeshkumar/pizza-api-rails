class Pizza < ApplicationRecord
  has_and_belongs_to_many :toppings

  # validation
  validates_presence_of :name
  validates_presence_of :image_url
  validates_presence_of :price

end
