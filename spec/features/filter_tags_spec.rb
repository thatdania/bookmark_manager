feature 'can view links by tag' do
  scenario 'go to URL and see links with given tag' do
    visit('/links/new')
    fill_in('Name', with: 'theo')
    fill_in('URL', with: 'https://media.giphy.com/')
    fill_in('tag', with: 'bubbles')
    click_button('Add')
    visit('/tags/bubbles')
    expect(page.status_code).to eq(200)
    expect(page).to have_content('theo')
  end
end
