class CreateLessons < ActiveRecord::Migration[7.1]
  def change
    create_table :lessons do |t|
      t.string :title, null: false
      t.string :descriptive, null: false, limit: 500

      t.references :modulo, null: false, foreign_key: true

      t.timestamps
    end
  end
end

