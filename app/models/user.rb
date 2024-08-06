class User < ApplicationRecord
    validates_presence_of :name, :document
    enum :role, [:intern, :employee, :manager ]
end
