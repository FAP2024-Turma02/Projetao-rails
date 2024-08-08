class Product < ApplicationRecord
    belongs_to :user, optional: true
    
    # Validações para o campo name
    validates :name, presence: true, length: { minimum: 3, maximum: 100 }
  
    # Validações para o campo SKU
    validates :sku, presence: true, uniqueness: true
  
    # Validação para o campo price
    validates :price, numericality: { greater_than: 0 }
  
    # Validação para o campo stock_quantity
    validates :stock_quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }


    # Callback para arredondar o preço
    before_save :round_price

    private

    def round_price
        self.price = price.round(2) if price.present?
    end
end
