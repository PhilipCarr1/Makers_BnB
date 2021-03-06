feature 'Add property' do
  scenario 'a user wants to list their property on the site and be confirmed' do
    visit ('add_property')

    fill_in('property_name', with: 'Test Property Name')
    fill_in('description', with: 'Test description')
    fill_in('price', with: '99.99')
    fill_in('host_name', with: 'Test host name')
    click_button 'Submit'
  
    visit ('/add_confirmation')

    expect(page).to have_content('Test Property Name')
    expect(page).to have_content('Test description')
    expect(page).to have_content(99.99)
    expect(page).to have_content('Property Confirmation')
  end
end