# User story 3

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10

feature 'Attack reduces hit points' do
  scenario 'see player 2 hit points drop by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Ants: 50HP'
  end
end