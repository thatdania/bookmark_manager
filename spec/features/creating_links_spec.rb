feature ' User can add link to the database ' do
  scenario 'User wants to add a link' do
    visit('/links/new')
    fill_in('Name', with: 'theo')
    fill_in('URL', with: 'https://media.giphy.com/')
    click_button('Add')
    expect(page.status_code).to eq 200
    expect(page).to have_content('theo')
  end
end

feature 'User can add tag to the added link in the database' do
  scenario 'User wants to add tag, when add link' do
    visit('/links/new')
    fill_in('Name', with: 'theo')
    fill_in('URL', with: 'https://media.giphy.com/')
    fill_in('tag', with: 'coderoyalty')
    click_button('Add')
    expect(page.status_code).to eq 200
    expect(page).to have_content('coderoyalty')
  end
end
