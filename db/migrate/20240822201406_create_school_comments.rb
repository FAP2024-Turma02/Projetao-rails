class CreateSchoolComments < ActiveRecord::Migration[7.1]
  def change
    create_table :school_comments do |t|
      t.integer :commentable_id
      t.string :commentable_type
      t.text :content
      t.references :student, null: false, foreign_key: { to_table: :school_students }

      t.timestamps
    end
  end
end
