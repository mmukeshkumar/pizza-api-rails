class CreateJoinTablePizzaTopping < ActiveRecord::Migration[5.1]
  def change
    create_join_table :pizzas, :toppings do |t|
      t.references :pizza, index: true, null: false, foreign_key: true
      t.references :topping, index: true, null: false, foreign_key: true
    end
  end
end
