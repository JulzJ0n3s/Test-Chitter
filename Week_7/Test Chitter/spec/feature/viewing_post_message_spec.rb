require 'pg'

feature 'Posting peeps on chitter' do
    scenario 'user message post on chitter' do
        connection = PG.connect(dbname: 'chitter_manager')

        visit ('/peeps')
        
        expect(page).to have_content 'This is a test peep'

    end
end