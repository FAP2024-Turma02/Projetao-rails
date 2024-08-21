class Enrollment < ApplicationRecord
  belongs_to :aluno
  belongs_to :curso

  validates :aluno_id, uniqueness: { scope: :curso_id }
end

