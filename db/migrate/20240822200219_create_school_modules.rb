class CreateSchoolModules < ActiveRecord::Migration[7.1]
  def change
    create_table :school_modules do |t|
      t.string :name
      t.references :course, null: false, foreign_key: { to_table: :school_courses }

      t.timestamps
    end
  end
end
