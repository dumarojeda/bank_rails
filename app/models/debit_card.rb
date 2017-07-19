class DebitCard < ApplicationRecord
  # Asociations
  belongs_to :account
  belongs_to :customer
  has_many :bank_transactions
end
