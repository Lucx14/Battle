feature 'view hit points' do
  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit

  # For a user to do this, they would have to:
  #
  # Visit the home page ('/')
  # Fill in a text field with a name
  # Fill in a second text field with a name
  # Click a Submit button



  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Piplup: 60HP'
  end

  scenario 'see Player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Pikachu: 60HP'
  end
end


