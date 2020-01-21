require 'peeps'

describe Peeps do 
    describe '.all' do
        it 'returns a list of peeps' do
        connection = PG.connect(dbname: 'chitter_manager')
    
        # Add the test data
        connection.exec("INSERT INTO chitter_peeps (title, peep, time_id) VALUES ('Where have you been?', 'Hello Good people, Welcome to database week, I am your Chitter bot! This is a test peep', NOW());")
    
        peeeps = Peeps.all
    
        expect(peeeps).to include('Where have you been?')
        
        end
    end
end