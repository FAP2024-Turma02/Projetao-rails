class CreateSchoolCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :school_courses do |t|
      t.string :name
      t.string :description
      t.integer :workload

      t.timestamps
    end
  end
end
