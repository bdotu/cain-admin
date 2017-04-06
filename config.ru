require './app/app'

run Sinatra::Application

# set :public_folder, File.join(APP_ROOT, "public")
map "/public" do
  run Rack::Directory.new("./public")
end
