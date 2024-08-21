class AddUniqueIndexToTableName < ActiveRecord::Migration[7.1]
  def change
    add_index :enrollments, [:student_id, :course_id], unique: true
  end
end
