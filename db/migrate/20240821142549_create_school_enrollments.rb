class CreateSchoolEnrollments < ActiveRecord::Migration[7.1]
  def change
    create_table :school_enrollments do |t|
      t.date :enrollment_date
      t.integer :status
      t.date :enrollment_expiry_date
      t.references :student, null: false, foreign_key: { to_table: :school_students }
      t.references :course, null: false, foreign_key: { to_table: :school_courses }

      t.timestamps
    end
  end
end
