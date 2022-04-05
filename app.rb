require 'sinatra'
require 'sinatra/reloader' if development?

class MakersBnB < Sinatra::Base
  get '/add_property' do
    erb :add_property
  end

  post '/add_property' do
    redirect '/' #'/view_property' ?
  end

  run! if app_file == $0
end

