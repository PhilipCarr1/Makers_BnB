require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/Property'

class MakersBnB < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/properties' do
    @properties = Property.all
    erb :list_properties
  end
  
  get '/add_property' do
    erb :add_property
  end

  post '/add_property' do
    redirect '/properties'
  end

  run! if app_file == $0
end
