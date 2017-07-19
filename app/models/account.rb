class Account < ApplicationRecord
  belongs_to :customer
  has_one :debit_card
end
