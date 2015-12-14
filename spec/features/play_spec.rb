# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature '"Rock", "Paper" and "Scissors"' do
RAND_SEED = 216239

  before do
    visit '/'
    fill_in 'name', with: 'Ham'
    click_button 'GO!'
  end

  # see ROCK, PAPER, SCISSORS option
  scenario 'see shape options' do
    expect(page).to have_button 'ROCK'
    expect(page).to have_button 'PAPER'
    expect(page).to have_button 'SCISSORS'
  end

  # choose one of these options
  scenario 'choose shape option' do
    click_button 'ROCK'
    expect(page).to have_content 'Your shape is ROCK'
  end

  # game chooses an options
  scenario 'Opposition chooses random shape' do
    srand(RAND_SEED)
    click_button 'ROCK'
    message = find(:css, "#opponent").text # capybara method to retrieve an element in this case #opponent
    expect(page).to have_content 'Opposition shape is PAPER'
  end

  def opposition_message
    [:rock, :paper, :scissors].map { |shape| "Opposition shape is #{shape.upcase}" }
  end
end



