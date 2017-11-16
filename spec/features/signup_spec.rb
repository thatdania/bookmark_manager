feature 'User able to register' do
  scenario 'User registers on Signup page' do
    visit('/register')
    fill_in(:email, with: 'dania@test.com')
    fill_in(:password, with: '12345')
    click_button('Submit')
    expect(page.current_url).to include('/links')
    expect(page).to have_content('Welcome dania@test.com')
    expect(User.length).to eq(1)
  end
end
