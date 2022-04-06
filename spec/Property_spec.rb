require "Property"
require 'database_helpers'
require 'pg'

describe Property do
  describe '.all' do 
      it 'returns all properties' do 

        setup_test_database

         result = Property.create(property_name: 'Test Property Name', description: 'Test description', price: 99.99, host_name: 'Test host name')
        
        result = Property.all

        expect(result.length).to eq 1
        expect(result.description).to eq "Test description"
      end 
    end
end

describe '.create' do
  it 'creates a new property' do
    makersbnb = Property.create(property_name: "Test Name", description: "Test description", price: "90.45", host_name: "Test host name")
    persisted_data = persisted_data(id: makersbnb.id)

    expect(makersbnb).to be_a Property
    expect(makersbnb.id).to eq persisted_data['id']
    expect(makersbnb.property_name).to eq "Test Name"
    expect(makersbnb.description).to eq "Test description"
    expect(makersbnb.price).to eq "90.45"
    expect(makersbnb.host_name).to eq "Test host name"
  end
end
