class User < ActiveRecord::Base
  has_many  :favorite_toppings,
            :class_name => "Topping"
end
