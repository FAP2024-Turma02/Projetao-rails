# app/models/concerns/commentable.rb
module Commentable
  extend ActiveSupport::Concern

  included do
    # Define a associação polimórfica
    has_many :comments, as: :commentable, dependent: :destroy
  end
end
