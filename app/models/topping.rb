class Topping < ActiveRecord::Base
  has_and_belongs_to_many :pizzas
end
