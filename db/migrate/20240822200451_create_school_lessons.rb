class CreateSchoolLessons < ActiveRecord::Migration[7.1]
  def change
    create_table :school_lessons do |t|
      t.string :title
      t.string :content
      t.references :school_module, null: false, foreign_key: true

      t.timestamps
    end
  end
end
