# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

mozzarella_cheese = Topping.create(name: 'MOZZARELLA_CHEESE', price: 2.50)
red_sauce = Topping.create(name: 'RED_SAUCE', price: 1.50)
pepperoni = Topping.create(name: 'PEPPERONI', price: 3.50)
red_tomato = Topping.create(name: 'RED_TOMATOES', price: 2.50)
spinach = Topping.create(name: 'SPINACH', price: 1.50)

Topping.create(name: 'BLACK_OLIVES', price: 1.50)
Topping.create(name: 'MUSHROOMS', price: 1.00)
Topping.create(name: 'FETA_CHEESE', price: 2.50)
Topping.create(name: 'PARMESAN_CHEESE', price: 2.50)
Topping.create(name: 'PESTO_SAUCE', price: 3.50)


cheese_pizza = Pizza.create(name: 'CHEESE',
               image_url: 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Pizza_on_stone.jpg', description: "A regular cheese pizza consists of the crust, tomato sauce and cheese.", price: 10.50)

cheese_pizza.toppings << mozzarella_cheese
cheese_pizza.toppings << red_sauce

pepperoni_pizza = Pizza.create(name: 'PEPPERONI', image_url: 'https://upload.wikimedia.org/wikipedia/commons/d/d1/Pepperoni_pizza.jpg', description: "You won't miss the gluten in this crust! Topped with cheesy goodness and turkey pepperoni, this pizza is bound to be a hit with the whole family.", price: 13.50)
pepperoni_pizza.toppings << mozzarella_cheese
pepperoni_pizza.toppings << red_sauce
pepperoni_pizza.toppings << pepperoni


margarita_pizza = Pizza.create(name: 'MARGARITA', image_url: 'https://upload.wikimedia.org/wikipedia/commons/a/a3/Eq_it-na_pizza-margherita_sep2005_sml.jpg', description: 'Pizza Margherita was created by pizza maker named Raffaele Esposito to display the colors of an Italian flag', price: 11.50)
margarita_pizza.toppings << mozzarella_cheese
margarita_pizza.toppings << red_sauce
margarita_pizza.toppings << spinach

Promotion.create([{name: 'SUPER_BOWL_DEAL', discount_percentage: 10.00, expiry_date: Date.parse("Feb 4 2019")}, {name: 'HALF_OFF_DEAL', discount_percentage: 50.00}])



=begin

def up
  5.times do |i|
    Product.create(name: "Product ##{i}", description: "A product.")
  end
end

def down
  Product.delete_all
end
=end
