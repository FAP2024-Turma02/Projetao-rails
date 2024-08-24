class CreateModules < ActiveRecord::Migration[7.1]
  def change
    create_table :modules do |t|
      t.string :name
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
