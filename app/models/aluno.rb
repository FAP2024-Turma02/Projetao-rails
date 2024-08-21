class Aluno < ApplicationRecord
    has_many :enrollments
    has_many :cursos, through: :enrollments

    def cursos_by_validade(data = Date.today)
        cursos.joins(:enrollments)
              .where('enrollments.aluno_id = ?', id)
              .where('enrollments.validade >= ?', data)
              .distinct
    end
end
  
