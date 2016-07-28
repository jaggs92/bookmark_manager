require 'spec_helper.rb'

def sign_up
  visit '/user/new'
  expect(page.status_code).to eq(200)
  fill_in 'first_name', with: 'Giancarlo'
  fill_in 'surname', with: 'Fabrizi'
  fill_in 'email', with: 'gfabrizi@gmail.com'
  fill_in 'password', with: 'password'
  click_button 'Add user'
end
