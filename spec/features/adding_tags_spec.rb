require 'spec_helper'

feature 'adding a tag to a link' do
  scenario 'adding a single tag to a single link' do
    visit '/links/new'
    fill_in 'url', with: 'www.bbc.co.uk'
    fill_in 'title', with: 'BBC'
    fill_in 'tags', with: 'news'
    click_button('Create_link')
    link = Link.first
    expect(link.tags.map(&:name)).to include 'news'
  end
end
