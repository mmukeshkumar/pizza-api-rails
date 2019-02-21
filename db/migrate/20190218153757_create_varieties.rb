class CreateVarieties < ActiveRecord::Migration[5.1]
  def change
    create_table :varieties do |t|
      t.string :name
      t.string :image_url
      t.text :description
      t.decimal :price
      #t.references :toppings, foreign_key: true
      t.timestamps
    end
  end
end
