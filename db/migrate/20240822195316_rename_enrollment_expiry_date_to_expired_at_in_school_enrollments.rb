class RenameEnrollmentExpiryDateToExpiredAtInSchoolEnrollments < ActiveRecord::Migration[7.1]
  def change
    rename_column :school_enrollments, :enrollment_expiry_date, :expired_at
  end
end
