feature "creating a new peep" do
    scenario "adding a new peep to the chitter manager" do 
        visit('/peep/new')
        fill_in('title', with: 'Peeping all-day-long')
        fill_in('peep', with: 'Is is a great day to be peeping on Chitter!')
        click_button('Submit')

        expect(page).to have_content 'Is is a great day to be peeping on Chitter!'
    end
end