require 'sinatra'
require 'sinatra/activerecord'
require 'haml'
require './config/environments'
require 'require_all'
require_all './app/models'

# Render index page
get '/' do
  # db_time = database.connection.execute('SELECT CURRENT_TIMESTAMP').first['now']
  # puts "DB time is #{db_time}"
  haml :index
end

get '/people' do
  haml :people
end

get '/projects' do
  haml :projects
end

get '/expenses' do
  haml :expenses
end

# Error Handling
not_found do
  haml :err
end

error do
  haml :err
end
