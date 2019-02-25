class Promotion < ApplicationRecord
  # validation
  validates_presence_of :name
  validates_presence_of :discount_percentage
end
