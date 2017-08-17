require './app.rb'

# feature 'testing infrastructure' do
#   scenario 'can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'players entering names' do
  scenario 'player can enter name in form and see it on screen' do
    visit('/')
    fill_in('name', with: 'catface')
    click_button('Submit')
    expect(page).to have_content 'my name is catface'
  end
end
