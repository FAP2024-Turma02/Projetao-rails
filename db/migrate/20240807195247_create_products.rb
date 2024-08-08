class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :sku, null: false 
      t.decimal :price, default: 0.0
      t.integer :stock_quantity, default: 0
      t.text :description, default: ""

      t.timestamps
    end
    add_index :products, :sku, unique: true
  end
end
