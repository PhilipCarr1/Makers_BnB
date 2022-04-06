require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'makersbnb_test')
  connection.exec("TRUNCATE property;")
end

def add_row_to_test_database
  connection = PG.connect(dbname: 'makersbnb_test')
  connection.exec("INSERT INTO property (property_name, description, price, host_name) values ('Test Property Name', 'Test description', 99.99, 'Test host name');")
end
