feature 'View welcome page' do
    scenario 'Welcome page' do
        visit('/')
        expect(page).to have_content "Hello Peeper!" 
        expect(page).to have_content "Welcome to Chitter"
    end
end