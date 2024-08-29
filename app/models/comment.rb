class Comment < ApplicationRecord
    include Commentable
    belongs_to :commentable, polymorphic: true
    belongs_to :student, class_name: 'Aluno'
    #has_many :comments, as: :commentable, dependent: :destroy

    validates :commentable_id, presence: { message: "Commentable ID can't be blank" }
    validates :commentable_type, presence: true, inclusion: { in: %w(Curso Modulo Lesson Comment), message: "%{value} is not a valid commentable type" }
    validates :student_id, presence: { message: "Student ID can't be blank" }
    validates :content, presence: true, length: { maximum: 500, message: "Content must be 500 characters or less" }
  end
  
