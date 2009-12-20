class Restaurant < ActiveRecord::Base
  has_many :pizzas
  belongs_to :order
end
