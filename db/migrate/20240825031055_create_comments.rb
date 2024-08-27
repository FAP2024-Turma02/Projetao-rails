class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.integer :commentable_id
      t.string :commentable_type
      t.references :student, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
