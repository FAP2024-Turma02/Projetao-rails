class RemoveRnrollmentDateFromSchoolEnrollments < ActiveRecord::Migration[7.1]
  def change
    remove_column :school_enrollments, :enrollment_date, :date
  end
end
