# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'register name' do
  scenario 'register and see name' do
    visit '/'
    fill_in 'name', with: 'Ham'
    click_button 'GO!'
    expect(page).to have_content 'Ham'
  end
end