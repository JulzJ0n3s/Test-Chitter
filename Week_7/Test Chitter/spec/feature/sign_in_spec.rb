feature 'registration' do
    scenario 'a user can sign up' do
      visit '/users/new'
      fill_in('name', with: 'Julia')
      fill_in('email', with: 'julia@world.com')
      fill_in('password', with: 'password123')
      click_button('Submit')
  
      expect(page).to have_content "Welcome, Julia"
    end
  end