# Dummy Data
require 'require_all'
require_all './app/models/*.rb'
# require './app/models/person.rb'

roles = [
  {role_name: "Board Member"},
  {role_name: "Donor"},
  {role_name: "Member"},
  {role_name: "Volunteer"},
  {role_name: "Partner"},
  {role_name: "Subscriber"}
]

roles.each do |role|
  Role.create(role)
end

people = [
  # {role_id: 1, title: "Ms.", first_name: "Daisy", middle_name: "D", last_name: "Isibor", address: "300 100th Ave NE", city: "Bellevue", state: "WA", zip: 98004, country: "US", phone: "515-708-719", email: "isibord@gmail.com ", company: "Microsoft", date_of_first_contact: "April 2013", comments: "Thanks :)"},
  # {role_id: 4, title: "Mr", first_name: "Bright", last_name: "Dotu", address: "1000 17th Ave N", city: "Nashville", state: "TN", zip: 37208, country: "US", phone: "615-602-5364", email: "bright@email.com", company: "Just Another Bot", date_of_first_contact: "June 2013"},
  {role_id: 3, title: "Ms.", first_name: "Daisy", middle_name: "D", last_name: "Isibor", address: "300 100th Ave NE", city: "Bellevue", state: "WA", zip: 98004, country: "US", phone: "515-708-719", email: "isibord@gmail.com ", company: "Yahoo", date_of_first_contact: "April 2013", comments: "Thanks :)"},
  {role_id: 2, title: "Ms.", first_name: "Daisy", middle_name: "D", last_name: "Isibor", address: "300 100th Ave NE", city: "Bellevue", state: "WA", zip: 98004, country: "US", phone: "515-708-719", email: "isibord@gmail.com ", company: "Google", date_of_first_contact: "April 2013", comments: "Thanks :)"}
]

people.each do |person|
  Person.create(person)
end

subscriptions = [
  {email: "isibord@gmail.com", subscription_info: "yearly", subscribed: true},
  {email: "bright@email.com", subscription_info: "monthly", subscribed: false},
]

subscriptions.each do |subs|
  Subscription.create(subs)
end

p_types = [
  {project_type: "Social"},
  {project_type: "Conference"}
]

p_types.each do |type|
  ProjectType.create(type)
end

projects = [
  {project_type_id: 2, title: "Hack for CAIN", total_participants: 12, amount_raised: nil, address: "300 100th Aven NE", city: "Bellevue", state: "WA", zip: 98004, country: "US", description: "Hackathon for CAIN", organizer: "Daisy"}
]

projects.each do |project|
  Project.create(project)
end

donation_plat = [
  {donation_platform_name: "MSFT Benevity"}
]

donation_plat.each do |plat|
  DonationPlatform.create(plat)
end


donation_acts = [
  {people_id: 1, amount: 500, currency: "USD", project_id: 1, thank_you_sent: "7-22-2016", donation_platform_id: 1, receipt_sent: "7-22-2016", comments: ":)"}
]

donation_acts.each do |act|
  DonationActivity.create(act)
end

payment_ty = [
  {payment_type_name: "check"},
  {payment_type_name: "cash"},
  {payment_type_name: "paypal"}
]

payment_ty.each do |pty|
  PaymentType.create(pty)
end

expense_acts = [
  {gross_amount: -200, payment_type_id: 1, item_description: "Library Building", issuing_person: 1, receiving_person: 2, location: "Nigeria", receipt_received_or_issued: "7-22-2016", platform: "Bank-UBA", comments: ":D"}
]

expense_acts.each do |exp|
  ExpenseActivity.create(exp)
end
