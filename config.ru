require './app/app'
require './public'

run Sinatra::Application

# set :public_folder, File.join(APP_ROOT, "public")
# map "/public" do
#   run Rack::Directory.new("./public")
# end
