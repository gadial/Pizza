class AddPizzasToppingsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :pizzas_toppings, :id => false do |t|
      t.integer :pizza_id, :null => false
      t.integer :topping_id, :null => false
    end
  end

  def self.down
    drop_table :pizzas_toppings
  end
end
