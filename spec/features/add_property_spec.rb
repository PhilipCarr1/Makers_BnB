feature 'Add property' do
  scenario 'a user wants to list their property on the site' do
    setup_test_database
    
    Property.create(property_name: 'Test Property Name', description: 'Test description', price: 99.99, host_name: 'Test host name')

    visit ('/properties')

    expect(page).to have_content('Test Property Name')
    expect(page).to have_content('Test description')
    expect(page).to have_content(99.99)
    expect(page).to have_content('Test host name')
  end
end