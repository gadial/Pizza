class Pizza < ActiveRecord::Base
  has_and_belongs_to_many :toppings
  belongs_to :order
  belongs_to :user
end
