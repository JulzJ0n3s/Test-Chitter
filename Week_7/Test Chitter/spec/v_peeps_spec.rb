require 'peeps'

describe Peeps do 
    describe '.all' do
        it 'returns a list of peeps' do
        connection = PG.connect(dbname: 'chitter_manager_test')
    
        # Add the test data
        connection.exec("INSERT INTO chitter_peeps ('''') VALUES ('''');")
    
        bookmarks = Bookmark.all
    
        expect(bookmarks).to include('''')
        
        end
    end
end