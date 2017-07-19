class BankTransaction < ApplicationRecord
  # Validations
  validates :amount, :movement, :source, presence: true
end
