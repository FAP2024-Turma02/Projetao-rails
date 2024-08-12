class CreateThemes < ActiveRecord::Migration[7.1]
  def change
    create_table :themes do |t|
      t.string :title
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
