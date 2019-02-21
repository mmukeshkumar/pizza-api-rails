class CreatePromotions < ActiveRecord::Migration[5.1]
  def change
    create_table :promotions do |t|
      t.string :name
      t.decimal :discount_amount
      t.decimal :discount_percentage
      t.timestamps
    end
  end
end
