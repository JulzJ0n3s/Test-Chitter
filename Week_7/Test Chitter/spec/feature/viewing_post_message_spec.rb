require 'pg'

feature 'Posting peeps on chitter' do
    scenario 'user message post on chitter' do
        connection = PG.connect(dbname: 'chitter_manager_test')

        connection.exec("INSERT INTO chitter_peeps (title, peep, time_id) VALUES ('Database Peepers', 'Hello Chitter, Welcome to database week!', NOW());")
        connection.exec("INSERT INTO chitter_peeps (title, peep, time_id) VALUES ('I love Chitter', 'Chitter is awesome!', NOW());")
        connection.exec("INSERT INTO chitter_peeps (title, peep, time_id) VALUES ('Where have you been?', 'Hello Good people, Welcome to database week, I am your Chitter bot! This is a test peep', NOW());")

        visit ('/peeps')
        
        expect(page).to have_content 'Hello Chitter, Welcome to database week!'

    end
end