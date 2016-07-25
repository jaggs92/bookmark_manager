require 'spec_helper.rb'

feature "Homepage links" do
  scenario "As a user I can see my links on the homepage" do
    visit '/links'
    expect(page).to have_link
  end
end
