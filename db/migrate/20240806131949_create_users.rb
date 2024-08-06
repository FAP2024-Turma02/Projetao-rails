class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :document, null: false
      t.integer :role, default: 1

      t.timestamps
    end
  end
end
