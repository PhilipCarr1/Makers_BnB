feature 'contact form' do 
  scenario 'a user want to contact the site about query' do 
    visit('/contact_page')

    fill_in('fname', with: 'Jane')
    fill_in('lname', with: 'Doe')
    fill_in('email', with: 'janedoe@email.com')
    fill_in('message', with: 'I have a query about my booking.')
    click_button 'Send Message'

    expect(page).to have_content('Thank you for your message!')
  end 
end 
