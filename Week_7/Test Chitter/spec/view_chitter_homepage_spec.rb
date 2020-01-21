require 'chitter'

describe Chitter do
    it 'shows homepage' do
    expect(subject).to be_a Chitter
    expect(subject).to content "Hello Peeper!, Welcome to Chitter"
    end

    describe '.all' do
        it 'returns a list of bookmarks' do
          connection = PG.connect(dbname: 'chitter_manager_test')
      
          # Add the test data
          connection.exec("INSERT INTO bookmarks ('''') VALUES ('''');")
      
          bookmarks = Bookmark.all
      
          expect(bookmarks).to include('''')
         
        end
      end

end