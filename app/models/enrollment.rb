class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course

  # Validação para impedir registros duplicados
  validates :student_id, uniqueness: { scope: :course_id, message: "já está matriculado neste curso" }
end
