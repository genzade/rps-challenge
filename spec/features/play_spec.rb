# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature '"Rock", "Paper", "Scissors", "Lizard" and "Spock"' do
RAND_SEED = 216239

  before do
    sign_in_and_play
  end

  # see ROCK, PAPER, SCISSORS, LIZARD, SPOCK option
  scenario 'see shape options' do
    expect(page).to have_button 'ROCK'
    expect(page).to have_button 'PAPER'
    expect(page).to have_button 'SCISSORS'
    expect(page).to have_button 'LIZARD'
    expect(page).to have_button 'SPOCK'
  end

  # choose one of these options
  scenario 'choose shape option' do
    click_button 'ROCK'
    expect(page).to have_content 'Your shape is ROCK'
  end

  scenario 'choose shape option' do
    click_button 'SPOCK'
    expect(page).to have_content 'Your shape is SPOCK'
  end

  # game chooses an options
  scenario 'Opposition chooses random shape' do
    srand(RAND_SEED)
    click_button 'ROCK'
    message = find(:css, "#opponent").text # capybara method to retrieve an element in this case #opponent
    expect(page).to have_content 'Opposition shape is PAPER'
  end

  context 'game over' do
    before do
      srand(RAND_SEED)
    end

    # declare winner
    scenario '...and the winner is...' do
      click_button 'SCISSORS'
      expect(page).to have_content 'You win!'
    end

    # declare draw
    scenario 'it is a draw' do
      click_button 'PAPER'
      expect(page).to have_content 'draw!'
    end

    # declare defeat
    scenario 'you lose' do
      click_button 'ROCK'
      expect(page).to have_content 'You lose!'
    end
  end

end



