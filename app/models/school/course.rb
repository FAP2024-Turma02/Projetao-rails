class School::Course < ApplicationRecord
  include Commentable

  has_many :enrollments
  has_many :students, through: :enrollments
  has_many :modules

  def active_students
    # self.enrollments.active.to_ary.map(&:student)
    students.joins(:enrollments).merge(School::Enrollment.active)
  end
end
