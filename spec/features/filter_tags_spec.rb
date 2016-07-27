feature "Filtering tags" do
  scenario "Filters links tagged with 'bubbles'." do
    visit '/tags/bubbles'

    within 'ul#links' do
    expect(link).to have content()
        end

  end
end
