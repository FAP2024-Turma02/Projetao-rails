class Modulo < ApplicationRecord
  belongs_to :curso
  has_many :lessons, dependent: :destroy #repensar o destroy caso uma lesson possa a vir a se referenciar a mais de um modulo no futuro
  has_many :comments, as: :commentable, dependent: :destroy
end
