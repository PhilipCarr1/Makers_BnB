feature 'view properties button' do
  scenario 'a user can view a list of properties by clicking view properties' do
    visit('/')
    expect(page).to have_content "Welcome to Bee N Bees.com!"
    click_button('View Properties') 
    expect(page).to have_content "List properties page"
  
  end
end