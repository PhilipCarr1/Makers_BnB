<<<<<<< Updated upstream
require "Property"
=======
require "Property"
require 'database_helpers'

describe Property do
  describe '.all' do 
      it 'returns all properties' do 
        properties = Property.all

        expect(properties).to include "Makers Paradise"
        expect(properties).to include "Quaint little paradise escape, perfect for couples and families"
        expect(properties).to include "130.75"
        expect(properties).to include "Benedict Cumberbatch"
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
  
  describe '.book'
    it 'allows the user to book a property' do
      makersbnb = Property.create(property_name: "Test Name", description: "Test description", price: "90.45", host_name: "Test host name")
      Property.book(id: makersbnb.id) # id provided by specific button clicked

  end
end
>>>>>>> Stashed changes
