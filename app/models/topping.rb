class Topping < ApplicationRecord
  #belongs_to :variety
  has_and_belongs_to_many :varieties
end
