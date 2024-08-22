class AddUniqueIndexToTableName < ActiveRecord::Migration[7.1]
  def change
    add_index :school_enrollments, [:student_id, :course_id], unique: true
  end
end
