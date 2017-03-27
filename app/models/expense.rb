require './app/models/person'

class ExpenseActivity < ActiveRecord::Base
  has_many :payment_types
  has_many :people
end

class PaymentType < ActiveRecord::Base
  belongs_to :expense_activity
end
