require 'pg'

feature 'Posting peeps on chitter' do
    scenario 'user message post on chitter' do
        connection = PG.connect(dbname: 'chitter_manager')
        result = connection.exec('SELECT * FROM chitter_peeps')
        result.map { |bookmark| bookmark['text'] }

        visit ('/peeps')
        first('.peeps').click_button 'Add Comment'

        expect(current_path).to eq "/peeps/#{peep.id}/new"

        fill_in 'comment', with: 'A peep a day...'
        click_button 'Submit'
        
        expect(current_path).to eq '/peeps'
        expect(first('.peeps')).to have_content 'this is a test peep'

    end
end