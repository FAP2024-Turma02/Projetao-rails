class CreateSchoolModules < ActiveRecord::Migration[7.1]
  def change
    create_table :school_modules do |t|
      t.string :name
      t.references :school_course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
