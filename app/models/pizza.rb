class Pizza < ActiveRecord::Base
  has_many :toppings
  belongs_to :restaurant
end
