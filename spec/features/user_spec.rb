require 'spec_helper'

feature 'a new user signs up' do
  scenario 'Sign up as a new user' do
    expect { sign_up }.to change (User,:count).by (1)
    expect(page).to have_content ('Welcome, harry@gmail.com')
    expect(User.first.email).to eq('harry@gmail.com')
  end
end
