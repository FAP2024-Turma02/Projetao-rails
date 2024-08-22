class Course < ApplicationRecord
    has_many :enrollments
    has_many :student, through: :enrollments
    
    def active_students
        students.joins(:enrollments).where(enrollments: { active: true })
    end
end
