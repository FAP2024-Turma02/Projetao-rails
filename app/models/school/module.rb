class School::Module < ApplicationRecord
  include Commentable
  
  belongs_to :course
  has_many :school_lessons
end
