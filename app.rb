require 'sinatra/base'
require 'sinatra/reloader'

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

  run! if app_file == $0
end