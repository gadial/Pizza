# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091221215658) do

  create_table "orders", :force => true do |t|
    t.datetime "datetime"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pizzas", :force => true do |t|
    t.integer  "price"
    t.integer  "slices"
    t.integer  "order_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pizzas_toppings", :id => false, :force => true do |t|
    t.integer "pizza_id",   :null => false
    t.integer "topping_id", :null => false
  end

  create_table "restaurants", :force => true do |t|
    t.text     "name"
    t.integer  "default_price"
    t.boolean  "kosher"
    t.integer  "delivery_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "toppings", :force => true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.text     "name"
    t.boolean  "kosher"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
