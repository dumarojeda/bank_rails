class Customer < ApplicationRecord
  # Asociations
  has_many :account
  # Validations
  validates :first_name, :last_name, :document_number, :phone, :city, :email, presence: true
end
