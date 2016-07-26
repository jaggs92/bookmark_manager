feature 'submitting links through a form' do
  scenario 'create a new link' do
    visit '/links/new'
    fill_in('title', with: 'Google')
    fill_in('url', with: 'http://www.google.com')
    find_button('Save link').click
    expect(current_path).to eq '/links'
    expect(page).to have_content('Google')
  end
end
