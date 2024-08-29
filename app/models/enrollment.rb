class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course

  # Validação de unicidade que já temos
  validates_uniqueness_of :student_id, scope: :course_id, message: "Esse aluno já está matriculado neste curso!"

  # Método para verificar se a matrícula está expirada
  def expired?
    expires_at.present? && expires_at < Date.today
  end

  # Validações customizadas
  validate :check_expiration
  validate :student_not_already_enrolled, on: :create

  private

  # Verifica se a matrícula está expirada
  def check_expiration
    if expired?
      errors.add(:expires_at, "A matrícula está expirada.")
    end
  end

  # Verifica se o aluno já está matriculado no curso
  def student_not_already_enrolled
    if Enrollment.exists?(student_id: student_id, course_id: course_id)
      errors.add(:base, "Esse aluno já está matriculado neste curso!")
    end
  end
end
