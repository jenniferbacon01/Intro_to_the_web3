require './app.rb'

feature 'players entering names' do
  scenario 'player can enter name in form and see it on screen' do
    sign_in_and_play
    expect(page).to have_content 'names are catface and waterbottle'
  end
end

feature 'player1 seeing player2 hit points' do
  scenario 'on play page hit points from players can be seen' do
    sign_in_and_play
    expect(page).to have_content "catface = 100, waterbottle = 100"
  end
end



feature 'gives confirmation of attack on play page' do
  scenario 'player1 attacking player2' do
    sign_in_and_play
    click_button('Attack player2')
    expect(page).to have_content "you have hit player2"
  end
end

feature 'player2s HP reduces by 10' do
  scenario 'player1 attacks player2' do
    sign_in_and_play
    click_button('Attack player2')
    expect(page).to have_content "catface = 100, waterbottle = 90"
  end
end
