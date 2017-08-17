def sign_in_and_play
  visit('/')
  fill_in('name', with: 'catface')
  fill_in('name2', with: 'waterbottle')
  click_button('Submit')
end
