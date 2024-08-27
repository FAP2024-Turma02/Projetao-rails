class Lesson < ApplicationRecord
  belongs_to :course_module
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :comments, as: :commentable
end
