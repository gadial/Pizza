class AddTestingData < ActiveRecord::Migration
  def self.up
    users = File.open("public/datafiles/users.dat","r") {|file| file.read.split("\n")}
    users.collect!{|line| line.split("\t")}
    users.each do |user_data|
      User.new do |user|
        user.name = user_data[0]
        user.save
      end
    end

    toppings = File.open("public/datafiles/toppings.dat","r") {|file| file.read.split("\n")}
    toppings.collect!{|line| line.split("\t")}
    toppings.each do |topping_data|
      Topping.new do |topping|
        topping.name = topping_data[0]
        topping.save
      end
    end

  end

  def self.down
    User.delete_all
  end
end
