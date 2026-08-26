class User < ApplicationRecord
    enum role: {employee: 0,improver: 1, manager: 2}
    validates :name, presence: true,  message: "O nome não pode ser vazio"
    validates :document, presence: true, uiqueless true, document: { message: 'deve ser um CPF válido' }
end
