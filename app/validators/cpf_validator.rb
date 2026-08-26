class CPFValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      # Lógica para validar o CPF aqui (exemplo usando a gem cpf_cnpj)
      unless CPF.valid?(value)
        record.errors.add(attribute, 'é inválido')
      end
    end
  end