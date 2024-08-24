class Lesson < ApplicationRecord
    belongs_to :modulo
  
    validates :title, presence: { message: "Title can't be blank" }
    validates :descriptive, presence: true, length: { minimum: 12, message: "Description must be at least 12 characters long" }
  end
  
