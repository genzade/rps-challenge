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
    expect(page).to have_button 'ROCK'
    expect(page).to have_button 'PAPER'
    expect(page).to have_button 'SCISSORS'
  end

  # choose one of these options
  scenario 'choose shape option' do
    click_button 'ROCK'
    expect(page).to have_content 'Your shape is ROCK'
  end
end