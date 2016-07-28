require_relative 'web_helpers.rb'

feature 'user signs up' do
  scenario 'I can sign up a new user'do
  expect { sign_up }.to change(User, :count).by(1)
  expect(page).to have_content('Welcome, Giancarlo Fabrizi')
  expect(User.first.email).to eq('gfabrizi@gmail.com')
  end
end
