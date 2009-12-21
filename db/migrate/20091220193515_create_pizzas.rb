class CreatePizzas < ActiveRecord::Migration
  def self.up
    create_table :pizzas do |t|
      t.integer :price
      t.integer :slices
      t.integer :order_id
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :pizzas
  end
end
