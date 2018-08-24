feature 'Enter names' do
  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to Start a fight by entering our names and seeing them
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Pikachu vs. Piplup'
  end
end
