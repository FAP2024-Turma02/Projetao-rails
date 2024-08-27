class Course < ApplicationRecord
    has_many :enrollments
    has_many :students, through: :enrollments
    has_many :course_modules, dependent: :destroy
    has_many :comments, as: :commentable, dependent: :destroy
  end
  