class Curso < ApplicationRecord
    has_many :enrollments
    has_many :alunos, through: :enrollments
    has_many :modulos, dependent: :destroy #repensar o destroy caso um modulo possa a vir a se referenciar a mais de um curso no futuro
    has_many :comments, as: :commentable, dependent: :destroy

    def alunos_by_validade(data = Date.today)
        alunos.joins(:enrollments)
              .where('enrollments.curso_id = ?', id)
              .where('enrollments.validade >= ?', data)
              .distinct
    end
end
  
