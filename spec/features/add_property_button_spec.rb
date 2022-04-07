feature 'add property button on landing page' do
  scenario 'a user(host) wants to add a property' do
    visit('/')
    click_button('Add a Property?')
    expect(page).to have_content "ADD PROPERTY PAGE"
  end
end