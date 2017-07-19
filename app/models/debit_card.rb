class DebitCard < ApplicationRecord
  # Asociations
  belongs_to :account
  belongs_to :customer
  # Validations
  validates_uniqueness_of :account_id
end
