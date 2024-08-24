class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course

  validates_uniqueness_of :student_id, scope: :course_id, message: "Essa matricula ja existe para esse aluno!"
end
