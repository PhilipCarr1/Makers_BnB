require 'sinatra/base'
require 'sinatra/reloader'

class MakersBnB < Sinatra::Base
  get '/' do
    erb :'index'
  end

  run! if app_file == $0
end