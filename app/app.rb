require 'sinatra'
require 'sinatra/activerecord'
require 'haml'
require './config/environments'
require 'rack-flash'
require 'require_all'
require_all './app/models'

# Render index page
get '/' do
  # db_time = database.connection.execute('SELECT CURRENT_TIMESTAMP').first['now']
  # puts "DB time is #{db_time}"
  haml :index
end

# People CRUD
get '/people' do
  @people = Person.all
  haml :people
end

# get '/people/new' do
#   @person = Person.new
#   haml :new_person
# end
#
# get '/people/:id' do
#   @person = Person.find(params[:id])
#   haml :show_person
# end
#
# post '/people/create' do
#   @person = Person.new(params[:person])
#   if @person.save
#     flash[:notice] = "Person successfully created."
#     redirect to("people/#{@person.id}")
#   else
#     haml :new_person
# end

# Projects CRUD
get '/projects' do
  @projects = Project.all
  haml :projects
end

# Expenses CRUD
get '/expenses' do
  @expenses = ExpenseActivity.all
  haml :expenses
end

# Error Handling
not_found do
  haml :err
end

error do
  haml :err
end
