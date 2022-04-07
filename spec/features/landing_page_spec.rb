 feature 'Viewing welcome page' do
  scenario 'visiting / page' do
    visit('/')
    expect(page).to have_content "Welcome to Bee N Bees.com!"
  end
 end