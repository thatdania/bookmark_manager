require './app/models/link'

feature ' User can add link to the database ' do
  scenario 'User wants to add a link' do
    visit('/links/new')
    fill_in('Name', with: 'theo')
    fill_in('URL', with: 'https://media.giphy.com/media/Fe0X6uDDLz9h6/giphy.gif')
    click_button('Submit')
    expect(page.status_code).to eq 200
    expect(page).to have_content('theo')
  end
end
