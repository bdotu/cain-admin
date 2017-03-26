require 'sinatra'
require 'haml'

# Render index page
get '/' do
  haml :index
end

# Error Handling
not_found do
  haml :err
end

error do
  haml :err
end
