class DebitCard < ApplicationRecord
  belongs_to :account
  belongs_to :customer
end
