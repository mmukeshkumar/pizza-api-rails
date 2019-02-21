# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Variety.create([{name: 'CHEESE',
                          image_url: 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Pizza_on_stone.jpg', description: "A regular cheese pizza consists of the crust, tomato sauce (which may be adulterated with parmesan or romano cheese, depending on the pizzeria), and a blend of cheeses -- usually shredded mozzarella, parmesan, romano, and possibly asiago.", price: 10.50},
                        {name: 'PEPPERONI', image_url: 'https://upload.wikimedia.org/wikipedia/commons/d/d1/Pepperoni_pizza.jpg', description: "You won't miss the gluten in this crust! Topped with cheesy goodness and turkey pepperoni, this pizza is bound to be a hit with the whole family.", price: 13.50},
                        {name: 'MARGARITA', image_url: 'https://upload.wikimedia.org/wikipedia/commons/a/a3/Eq_it-na_pizza-margherita_sep2005_sml.jpg', description: 'Pizza Margherita was created by pizza maker named Raffaele Esposito to display the colors of an Italian flag', price: 11.50}])
Promotion.create([{name: 'SUPER_BOWL_DEAL', discount_amount: 10.00}, {name: 'HALF_OFF_DEAL', discount_percentage: 50.00}])


Topping.create([{name: 'PEPPERONI',price: 2.50},
                {name: 'SPINACH', price: 1.50},
                {name: 'BLACK_OLIVES', price: 1.50},
                {name: 'MUSHROOMS', price: 1.50}
               ])
