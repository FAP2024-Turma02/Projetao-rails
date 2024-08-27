class CourseModule < ApplicationRecord
  belongs_to :course
  belongs_to :course
  has_many :lessons, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :comments, as: :commentable
end
