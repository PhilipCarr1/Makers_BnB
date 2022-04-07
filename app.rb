require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/Property'

class MakersBnB < Sinatra::Base
  enable :sessions, :method_override

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
    Property.create(property_name: params[:property_name], description: params[:description], price: params[:price], host_name: params[:host_name])
    redirect '/properties'
  end

  post '/properties/:id' do
    session[:booked_property] = Property.book(id: params[:id])
    redirect '/booking_confirmation'
  end

  get '/booking_confirmation' do
    @booked_property = session[:booked_property]
    erb :confirmation_page
  end

  delete '/properties/:id' do
    Property.delete(id: params[:id])
    redirect '/properties'
  end

  run! if app_file == $0
end
