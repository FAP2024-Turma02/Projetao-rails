class School::Lesson < ApplicationRecord
  include Commentable
  
  belongs_to :module
end
