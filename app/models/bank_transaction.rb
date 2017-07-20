class BankTransaction < ApplicationRecord
  # Validations
  validates :origin_account, :target_account, :amount, presence: true
end
