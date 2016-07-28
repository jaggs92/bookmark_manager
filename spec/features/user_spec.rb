require_relative 'web_helpers.rb'

feature 'user signs up' do
  scenario 'I can sign up a new user'do
  expect { sign_up }.to change(User, :count).by(1)
  expect(page).to have_content('Welcome, Giancarlo Fabrizi')
  expect(User.first.email).to eq('gfabrizi@gmail.com')
  end

  scenario 'it makes sure that the passwords match' do
    expect{ sign_up(password_confirmation: 'wrong') }.not_to change(User, :count)
  end

  def sign_up(first_name: 'Giancarlo', surname: 'Fabrizi', email: 'gfabrizi@gmail.com', password: 'password', password_confirmation: 'password')
    visit '/user/new'
    fill_in 'first_name', with: first_name
    fill_in 'surname', with: surname
    fill_in 'email', with: email
    fill_in 'password', with: password
    fill_in 'password_confirmation', with: password_confirmation
    click_button 'Add user'
  end

  scenario 'mismatched password keeps you on the same page' do
      expect{ sign_up(password_confirmation: 'wrong') }.not_to change(User, :count)
      expect(current_path).to eq '/user'
      expect(page).to have_content 'Password and confirmation password do not match'
      end
    end
