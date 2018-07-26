# User story 10
# As a lonely Player,
# So I can keep my Battle skills up to scratch
# I want to play a Computerised opponent

feature 'Computer opponent plays automatically' do
  scenario 'The play screen is bypassed' do
    visit('/')
    fill_in :player_1_name, with: 'Live Person'
    fill_in :player_2_name, with: 'Computer'
    click_button 'Submit'
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_content 'Computer attacks Live Person'
  end

end