# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature '"Rock", "Paper" and "Scissors"' do
  before do
    visit '/'
    fill_in 'name', with: 'Ham'
    click_button 'GO!'
  end

  # see ROCK, PAPER, SCISSORS option
  
  scenario 'see shape options' do
    expect(page).to have_content 'ROCK'
    expect(page).to have_content 'PAPER'
    expect(page).to have_content 'SCISSORS'
  end
end