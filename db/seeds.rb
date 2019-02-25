# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Pizza.create([{name: 'CHEESE',
               image_url: 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Pizza_on_stone.jpg', description: "A regular cheese pizza consists of the crust, tomato sauce and cheese.", price: 10.50},
              {name: 'PEPPERONI', image_url: 'https://upload.wikimedia.org/wikipedia/commons/d/d1/Pepperoni_pizza.jpg', description: "You won't miss the gluten in this crust! Topped with cheesy goodness and turkey pepperoni, this pizza is bound to be a hit with the whole family.", price: 13.50},
              {name: 'MARGARITA', image_url: 'https://upload.wikimedia.org/wikipedia/commons/a/a3/Eq_it-na_pizza-margherita_sep2005_sml.jpg', description: 'Pizza Margherita was created by pizza maker named Raffaele Esposito to display the colors of an Italian flag', price: 11.50}])

Promotion.create([{name: 'SUPER_BOWL_DEAL', discount_percentage: 10.00, expiry_date: Date.parse("Feb 4 2019")}, {name: 'HALF_OFF_DEAL', discount_percentage: 50.00}])


Topping.create([{name: 'PEPPERONI', price: 3.50},
                {name: 'SPINACH', price: 1.50},
                {name: 'BLACK_OLIVES', price: 1.50},
                {name: 'MUSHROOMS', price: 1.00},
                {name: 'RED_TOMATOES', price: 2.50},
                {name: 'MOZARELLA_CHEESE', price: 2.50},
                {name: 'FETA_CHEESE', price: 2.50},
                {name: 'PARMESAN_CHEESE', price: 2.50},
                {name: 'RED_SAUCE', price: 1.50},
                {name: 'PESTO_SAUCE', price: 3.50}
               ])


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
