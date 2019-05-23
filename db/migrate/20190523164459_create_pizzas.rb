class CreatePizzas < ActiveRecord::Migration[5.2]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :topping1
      t.string :topping2
      t.string :topping3
      t.integer :total
      t.string :status
      t.integer :order_id

      t.timestamps
    end
  end
end
