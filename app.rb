require 'sinatra/base'
require 'sinatra/reloader'

class MakersBnB < Sinatra::Base
  get '/' do
    "Welcome to Makers BnB"
  end
end