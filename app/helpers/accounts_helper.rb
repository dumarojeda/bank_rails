module AccountsHelper
  def get_account_number(id)
    account = Account.find(id)
    account.account_number
  end

  def get_amount(id)
    account = Account.find(id)
    account.amount
  end
end
