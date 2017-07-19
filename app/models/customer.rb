class Customer < ApplicationRecord
  # Validations
  validates :first_name, :last_name, :document_number, :phone, :city, :email, presence: true
end
