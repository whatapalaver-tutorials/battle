def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Enders'
  fill_in :player_2_name, with: 'Ants'
  click_button 'Submit'
end

def attack_sequence
  click_button 'Attack'
  click_button 'OK'
end