class Customer < ApplicationRecord
  # Validations
  validates :first_name, :last_name, presence: true
end
