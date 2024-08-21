class Curso < ApplicationRecord
    has_many :enrollments
    has_many :alunos, through: :enrollments

    def alunos_by_validade(data = Date.today)
        alunos.joins(:enrollments)
              .where('enrollments.curso_id = ?', id)
              .where('enrollments.validade >= ?', data)
              .distinct
    end
end
  
