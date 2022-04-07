feature 'Filtering properties' do
  scenario 'user can filter properties by keyword' do
    setup_test_database

    Property.create(property_name: 'Test Property Name', description: 'Lovely bright home', price: 99.99, host_name: 'Test host name')
    Property.create(property_name: 'Second Property', description: 'Test description', price: 129.99, host_name: 'Second host name')
    
    visit ('/properties')
    fill_in('filter', with: 'lovely')
    click_button "Filter"

    expect(page).to have_content("Lovely bright home")
  end
end