require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'makersbnb_test')
  connection.exec("TRUNCATE property;")
end

def add_row_to_test_database
  connection = PG.connect(dbname: 'makersbnb_test')
<<<<<<< Updated upstream
  connection.exec("INSERT INTO property (property_name, description, price, host_name) values ('Makers Paradise', 'Quaint little paradise escape, perfect for couples and families', 130.75, 'Benedict Cumberbatch');")
=======
  connection.exec("INSERT INTO property (property_name, description, price, host_name) values ('Test Property Name', 'Test description', 99.99, 'Test host name');")
>>>>>>> Stashed changes
end
