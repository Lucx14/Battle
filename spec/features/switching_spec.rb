
feature "player switching" do

  scenario "player 1 told it's their turn to start" do

    sign_in_and_play
    expect(page).to have_content "Pikachu's turn"

  end


  scenario "player 2 told it's their turn to after player 1 has attacked" do

    sign_in_and_play 
    click_button 'Attack'
    click_link 'OK'
    expect(page).to have_content "Piplup's turn"

  end
end