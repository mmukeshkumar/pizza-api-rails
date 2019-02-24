class CreateJoinTablePizzaTopping < ActiveRecord::Migration[5.1]
  def change
    create_join_table :pizzas, :toppings do |t|
      t.index [:pizza_id, :topping_id]
    end
  end
end
