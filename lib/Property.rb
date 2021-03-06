require 'pg'

class Property

  attr_reader :id, :property_name, :description, :price, :host_name

  def initialize(id:, property_name:, description:, price:, host_name:)
    @id = id
    @property_name = property_name
    @description = description
    @price = price
    @host_name = host_name
  end

  def self.open_connection
    if ENV['ENVIRONMENT'] == 'test'
    connection = PG.connect(dbname: 'makersbnb_test')
    else
    connection = PG.connect(dbname: 'makersbnb')
    end
  end

  def self.all
    connection = open_connection
    result = connection.exec('SELECT * FROM property;')
    result.map do |property|
      Property.new(id: property['id'], property_name: property['property_name'], description: property['description'], price: property['price'], host_name: property['host_name'])
    end
  end

  def self.create(property_name:, description:, price:, host_name:)
    connection = open_connection

    result = connection.exec_params("INSERT INTO property (property_name, description, price, host_name) VALUES($1, $2, $3, $4) RETURNING id, property_name, description, price, host_name;", [property_name, description, price, host_name])
    Property.new(id: result[0]['id'], property_name: result[0]['property_name'], description: result[0]['description'], price: result[0]['price'], host_name: result[0]['host_name'])
  end

  def self.book(id:)
    #for now, it retreives a property from the database at the id specified
    connection = open_connection
    result = connection.exec_params('SELECT * FROM property WHERE id=$1;',[id])
    Property.new(id: result[0]['id'], property_name: result[0]['property_name'], description: result[0]['description'], price: result[0]['price'], host_name: result[0]['host_name'])
  end
  
  def self.delete(id:)
    connection = open_connection
  
    connection.exec("DELETE FROM property WHERE id = '#{id}';")
  end

  def self.filter(filter)
    connection = open_connection
    
    result = connection.exec("SELECT * FROM property WHERE lower(description) LIKE '%#{filter.downcase}%';")
    result.map do |property|
      Property.new(id: property['id'], property_name: property['property_name'], description: property['description'], price: property['price'], host_name: property['host_name'])
    end
  end
end
