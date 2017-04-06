require './app/app'

run Sinatra::Application

set :public_folder, File.dirname(__FILE__) + '/static'
# map "/public" do
#   run Rack::Directory.new("./public")
# end
