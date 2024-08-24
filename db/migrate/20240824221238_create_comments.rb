class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :student, null: false, foreign_key: true
      t.integer :commentable_id, null: false
      t.string :commentable_type, null: false

      t.timestamps
    end
    add_index :comments, [:commentable_type, :commentable_id]
  end
end
