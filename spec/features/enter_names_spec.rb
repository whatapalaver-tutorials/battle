# User Story 1
# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

# Capybara style:
# 1. What does the user have to do?
# 2. What does teh user expect to see?

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Enders'
    fill_in :player_2_name, with: 'Ants'
    click_button 'Submit'
    expect(page).to have_content 'Enders vs Ants'
  end
end