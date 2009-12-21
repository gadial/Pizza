class User < ActiveRecord::Base
  has_many  :favorite_toppings,
            :class_name => "Topping"
  has_and_belongs_to_many :orders
end
