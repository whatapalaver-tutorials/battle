# User story 3

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10

feature 'Attack reduces hit points' do
  scenario 'see player 2 hit points drop by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Enders: 50HP'
    expect(page).to have_content 'Ants: 50HP'
  end

  # User story 7
  # As Player 1,
  # So I can lose a game of Battle,
  # I want Player 2 to attack me, and I want to get a confirmation
  scenario 'see confirmation that player 2 attacks player 1' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Ants attacks Enders'
  end

  # User story 7
  # As Player 1,
  # So I can lose a game of Battle,
  # I want Player 2 to attack me, and I want to get a confirmation
  scenario 'see player 1 hit points drop by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Enders: 50HP'
  end
end