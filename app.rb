require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/Property'

class MakersBnB < Sinatra::Base
  enable :sessions

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

  post '/booking_confirmation/:id' do
    session[:booked_property] = Property.book(id: params[:id]) 
    redirect '/booking_confirmation/:id'
  end


  get '/booking_confirmation/:id' do
    @booked_property = session[:booked_property]
    erb :confirmation_page
  end

  run! if app_file == $0
end
