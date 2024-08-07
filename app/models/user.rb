class User < ApplicationRecord
    validates_presence_of :name
    validates :document, presence: true, uniqueness: true, length: { in: 6..12, message: "must be between 6 and 12 characters" }
    enum :role, [:intern, :employee, :manager ]
end

  
