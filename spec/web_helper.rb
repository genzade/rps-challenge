def sign_in_and_play
  visit '/'
  fill_in 'name', with: 'Ham'
  click_button 'GO!'
end

def opposition_message
    [:rock, :paper, :scissors].map { |shape| "Opposition shape is #{shape.upcase}" }
end