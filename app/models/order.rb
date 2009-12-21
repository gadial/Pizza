class Order < ActiveRecord::Base
  has_many :pizzas
  has_and_belongs_to_many :users
end
