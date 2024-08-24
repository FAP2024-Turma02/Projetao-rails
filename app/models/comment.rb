class Comment < ApplicationRecord
  belongs_to :student
  belongs_to :commentable, polymorphic: true
end
