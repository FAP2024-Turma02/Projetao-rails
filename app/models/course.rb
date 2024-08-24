class Course < ApplicationRecord
    has_many :enrollments
    has_many :student, through: :enrollments
    has_many :course_modules
    has_many :comments, as: :commentable
    
    def active_students
        students.joins(:enrollments).where(enrollments: { active: true })
    end
end
