class CreateModulos < ActiveRecord::Migration[7.1]
  def change
    create_table :modulos do |t|
      t.string :name, null: false
      t.references :curso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
