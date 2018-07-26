# User story 9
# As a Player,
# So I can Lose a game of Battle,
# I want to see a 'Lose' message if I reach 0HP first

feature 'Declare loser' do
  scenario 'see confirmation that player 2 loses' do
    sign_in_and_play
    10.times { attack_sequence }
    click_button 'Attack'
    expect(page).to have_content 'Hard luck: Ants'
  end
end