class BankTransaction < ApplicationRecord
  belongs_to :debit_card
  belongs_to :account
end
