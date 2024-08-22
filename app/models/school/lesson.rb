class School::Lesson < ApplicationRecord
  belongs_to :module
  has_many :comments, as: :commentable
end
