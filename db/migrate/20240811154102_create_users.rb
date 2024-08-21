class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name, null: false   
      t.string :document, null: false   
      t.integer :role, null: false  

      t.timestamps
    end

    add_index :users, :document, unique: true
  end
end

