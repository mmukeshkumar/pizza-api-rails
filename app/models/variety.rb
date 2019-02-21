class Variety < ApplicationRecord
  #has_many :toppings
  has_and_belongs_to_many :toppings
end
