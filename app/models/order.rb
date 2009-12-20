class Order < ActiveRecord::Base
  has_many :restaurants
end
