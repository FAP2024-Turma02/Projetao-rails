class CreateSchoolLessons < ActiveRecord::Migration[7.1]
  def change
    create_table :school_lessons do |t|
      t.string :title
      t.string :content
      t.references :module, null: false, foreign_key: { to_table: :school_modules }

      t.timestamps
    end
  end
end
