feature 'viewing list of links on homepage' do
  scenario 'user navigates to homepage' do
    Link.create(name: 'Daniablog', url: 'https://hackernoon.com/@thatdania')
    visit('/')
    expect(page).to have_content 'Daniablog'
  end
end
