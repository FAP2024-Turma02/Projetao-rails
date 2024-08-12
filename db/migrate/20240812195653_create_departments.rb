class CreateDepartments < ActiveRecord::Migration[7.1]
  def change
    create_table :departments do |t|
      t.string :name
      t.integer :floor
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
