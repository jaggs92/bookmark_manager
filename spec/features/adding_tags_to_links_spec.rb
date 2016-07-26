feature 'adding tags to links' do
  scenario 'adding single tag to single link' do
    visit '/links/new'
    fill_in('title', with: 'Google')
    fill_in('url', with: 'http://www.google.com')
    fill_in('tags', with: 'search engine')

    find_button('Save link').click
    link = Link.first
    expect(link.tags.map(&:name)).to include('search engine')
  end
end
