require 'sinatra'
require 'sinatra/reloader' if development?

class MakersBnB < Sinatra::Base
  get '/' do
    erb :'index'
  end

  get '/properties' do
    ["Makers Paradise",
    "Quaint little paradise escape, perfect for couples and families",
    "130.75",
    "Benedict Cumberbatch"]
  end
  
  get '/add_property' do
    erb :add_property
  end

  post '/add_property' do
    redirect '/properties'
  end

  run! if app_file == $0
end
