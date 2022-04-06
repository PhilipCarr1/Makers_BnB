feature 'book now button' do
  scenario 'a user can book a property by clicking the book now button next to it' do
    visit('/properties')
    expect(page).to have_content "Makers Paradise"
    click_button('Book Now!') #needs to be specific for property id
    expect(page).to have_content "Booking Confirmation"
  end
end