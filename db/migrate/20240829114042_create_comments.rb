class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.references :commentable, polymorphic: true, null: false
      t.references :student, null: false, foreign_key: true
      t.text :content, null: false

      t.timestamps
    end
  end
end
