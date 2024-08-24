class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.integer :commentable_id, null: false
      t.string :commentable_type, null: false
      t.references :student, null: false, foreign_key: { to_table: :alunos }
      t.string :content, null: false, limit: 500

      t.timestamps
    end

    add_index :comments, [:commentable_id, :commentable_type]
  end
end

