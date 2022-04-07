feature 'book now button' do
  scenario 'a user can book a property by clicking the book now button next to it' do
    setup_test_database
    add_row_to_test_database
    visit('/properties')
    expect(page).to have_content "Test Property Name"
    click_button('Book Now!') #needs to be specific for property id
    expect(page).to have_content "Booking Confirmation"
    expect(page).to have_content "Test Property Name"
  end
end