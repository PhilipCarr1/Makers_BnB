feature 'deleting property' do
  scenario 'a user can delete a property' do
    visit ('/add_property')

    fill_in('property_name', with: 'Test Property Name')
    fill_in('description', with: 'Test description')
    fill_in('price', with: '99.99')
    fill_in('host_name', with: 'Test host name')
    click_button 'Submit'

    visit ('/properties')
    click_button 'Delete property'
    expect(page).not_to have_content('Test Property Name')
    expect(page).not_to have_content('Test description')
    expect(page).not_to have_content(99.99)
    expect(page).not_to have_content('Test host name')
  end
end

