class User < ApplicationRecord
    validates :name, presence: true
    validates :document, presence: true, uniqueness: true
    validates :role, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    
end
