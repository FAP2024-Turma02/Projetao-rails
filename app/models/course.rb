class Course < ApplicationRecord
    include Commentable

    has_many :enrollments
    has_many :student, through: :enrollments
    has_many :course_modules
    
    def active_students
        students.joins(:enrollments).where(enrollments: { active: true })
    end
end
