class Account < ApplicationRecord
  # Asociations
  belongs_to :customer
  has_one :debit_card
  has_many :bank_transactions
  # Validations
  validates :account_number, :amount, presence: true
end
