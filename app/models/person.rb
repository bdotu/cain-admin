require './app/models/expense'

class Person < ActiveRecord::Base
  belongs_to :role
  belongs_to :donation_activity
  belongs_to :expense_activity
  alias_attribute :issuing_person, :people_id
  alias_attribute :receiving_person, :people_id
end

class Role < ActiveRecord::Base
  has_many :people
end

class Subscription < ActiveRecord::Base
end
