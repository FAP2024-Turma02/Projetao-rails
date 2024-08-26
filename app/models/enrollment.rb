class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course

  validates_uniqueness_of :student_id, scope: :course_id, message: "Essa matrícula já existe para esse aluno!"

  # Método para verificar se a matrícula está expirada
  def expired?
    expires_at.present? && expires_at < Date.today
  end

  # Validação customizada para verificar se a matrícula está expirada
  validate :check_expiration

  private

  def check_expiration
    if expired?
      errors.add(:expires_at, "A matrícula está expirada.")
    end
  end
end
