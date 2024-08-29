class CourseModule  < ApplicationRecord
    has_many :lessons
    has_many :comments, as: :commentable, dependent: :destroy
end
