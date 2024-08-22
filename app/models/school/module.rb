class School::Module < ApplicationRecord
  belongs_to :course
  has_many :school_lessons
end
