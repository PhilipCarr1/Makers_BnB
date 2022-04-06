require 'pg'

class Property
  def self.open_connection
    if ENV['ENVIRONMENT'] == 'test'
    connection = PG.connect(dbname: 'makersbnb_test')
    else
    connection = PG.connect(dbname: 'makersbnb')
    end
  end

  def self.create(property_name:, description:, price:, host_name:)
    connection = open_connection

    result = connection.exec_params("INSERT INTO property (property_name, description, price, host_name) VALUES($1, $2, $3, $4) RETURNING id, property_name, description, price, host_name;", [property_name, description, price, host_name])
    Property.new(id: result[0]['id'], property_name: result[0]['property_name'], description: result[0]['description', price: result[0]['price'], host_name: result[0]['host_name']])
  end
end
