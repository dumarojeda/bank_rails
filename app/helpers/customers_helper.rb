module CustomersHelper
  def get_name_customer(id)
    person = Customer.find(id)
    "#{person.first_name} #{person.last_name}"
  end
end
