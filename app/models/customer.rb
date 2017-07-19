class Customer < ApplicationRecord
  # Asociations
  has_many :accounts
  has_many :debit_cards
  # Validations
  validates :first_name, :last_name, :document_number, :phone, :city, :email, presence: true
end
