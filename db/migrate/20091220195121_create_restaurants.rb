class CreateRestaurants < ActiveRecord::Migration
  def self.up
    create_table :restaurants do |t|
      t.text :name
      t.integer :default_price
      t.boolean :kosher
      t.integer :delivery_price

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurants
  end
end
