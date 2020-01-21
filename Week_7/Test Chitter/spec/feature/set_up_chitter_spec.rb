feature 'View welcome page' do
    scenario 'Welcome page' do
        visit('/')
        expect(page).to have_content "Hello Peepers!" 
        expect(page).to have_content "Welcome to Chitter"
    end
end