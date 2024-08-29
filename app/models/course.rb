class Course < ApplicationRecord
    has_many :enrollments
    has_many :students, through: :enrollments
    has_many :modules
    has_many :comments, as: :commentable, dependent: :destroy
  end
  