feature 'back button' do
  scenario 'a user can click back on "/properties" to return to "/"' do
    visit('/properties')
    expect(page).to have_content "List properties page"
    click_button('Back') 
    expect(page).to have_content "Welcome to Bee N Bees.com!"
  end
  scenario 'a user can click back on "/add_property" to return to "/"' do
    visit('/add_property')
    expect(page).to have_content "ADD PROPERTY PAGE"
    click_button('Back') 
    expect(page).to have_content "Welcome to Bee N Bees.com!"
  end
  scenario 'a user can click back on "/booking_confirmation" to return to "/properties"' do
    setup_test_database
    add_row_to_test_database
    visit('/properties')
    expect(page).to have_content "Test Property Name"
    click_button('Book Now!')
    click_button('Back') 
    expect(page).to have_content "List properties page"
  end
end