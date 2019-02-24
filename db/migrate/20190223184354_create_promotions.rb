class CreatePromotions < ActiveRecord::Migration[5.1]
  def change
    create_table :promotions do |t|
      t.string :name, :unique=>true
      t.decimal :discount_percentage
      t.date :expiry_date
      t.timestamps
    end
  end
end
