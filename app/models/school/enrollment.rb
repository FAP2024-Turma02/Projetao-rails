class School::Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course
  enum status: %i[active expired]
end
