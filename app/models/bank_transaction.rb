class BankTransaction < ApplicationRecord
  # Asociations
  belongs_to :debit_card
  belongs_to :account
  # Validations
  validates :amount, :movement, :source, presence: true
end
