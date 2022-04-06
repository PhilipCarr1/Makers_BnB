require 'pg'

class Property
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
  end
end