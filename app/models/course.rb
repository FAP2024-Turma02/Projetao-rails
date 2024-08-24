class Course < ApplicationRecord
    has_many :enrollments, dependent: :destroy
    has_many :students, through: :enrollments
    has_many :modules, dependent: :destroy
  
    # Método para trazer todos os alunos com matrícula ativa
    def active_students
      students.joins(:enrollments).where(enrollments: { active: true })
    end
end
