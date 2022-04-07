require "Property"
require 'database_helpers'

describe Property do
  describe '.all' do 
      it 'returns all properties' do 
        setup_test_database
        
        Property.create(property_name: 'Test Property Name', description: 'Test description', price: 99.99, host_name: 'Test host name')
        Property.create(property_name: 'Test Property Two', description: 'Test description 2', price: 102.99, host_name: 'Test host two')
        
        properties = Property.all

        expect(properties.first).to be_a Property
        expect(properties.first.property_name).to eq "Test Property Name"
        expect(properties.first.host_name).to eq "Test host name"
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

describe '.delete' do
  it 'deletes a property' do
    setup_test_database
    property_to_delete = Property.create(property_name: "Test Name", description: "Test description", price: "90.45", host_name: "Test host name")
    Property.delete(id: property_to_delete.id)
    properties = Property.all
    
    properties.each do |property| 
      expect(property.id).to be != property_to_delete.id
    end
  end
end