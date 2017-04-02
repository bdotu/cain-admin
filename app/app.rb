require 'sinatra'
require 'sinatra/activerecord'
require 'haml'
require './config/environments'

# Render index page
get '/' do
  # db_time = database.connection.execute('SELECT CURRENT_TIMESTAMP').first['now']
  # puts "DB time is #{db_time}"
  haml :index
end

# Error Handling
not_found do
  haml :err
end

error do
  haml :err
end
