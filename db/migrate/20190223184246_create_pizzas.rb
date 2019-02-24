class CreatePizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :pizzas do |t|
      t.string :name, :unique=>true
      t.string :image_url
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
