class CreateSchoolStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :school_students do |t|
      t.string :name
      t.string :email
      t.date :birthday

      t.timestamps
    end
  end
end
