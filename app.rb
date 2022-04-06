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
    Property.create(property_name: params[:property_name], description: params[:description], price: params[:price], host_name: params[:host_name])
    redirect '/properties'
  end

  # post '/properties/:id' do
  #   @booked_property = Property.book(id: params[:id])
  # end

  get '/booking_confirmation/:id' do
    @booked_property = Property.book(id: params['property.id') # need to get id from the button id clicked
    erb :confirmation_page
  end

  run! if app_file == $0
end
