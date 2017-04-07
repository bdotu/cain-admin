require 'sinatra'
require 'sinatra/activerecord'
require 'haml'
require './config/environments'
require 'rack-flash'
require 'require_all'
require_all './app/models'

set :public_folder, 'public'

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

get '/people/:id' do
  @person = Person.find(params[:id])
  # @person.first_name
end

post '/people' do
  @person = Person.create(role: params[:role], title: params[:title], first_name: params[:first_name], middle_name: params[:middle_name], last_name: params[:last_name], address: params[:address], city: params[:city], state: params[:state], zip: params[:zip], country: params[:country], phone: params[:phone], email: params[:email], company: params[:company], comments: params[:comments])
  redirect to('/people')
end

post '/people/destroy/:id' do
  @person = Person.find(params[:id])
  @person.destroy
  redirect '/people'
end


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
