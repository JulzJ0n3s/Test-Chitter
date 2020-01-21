# describe '.all' do
#     it 'returns a list of peeps' do
#       connection = PG.connect(dbname: 'chitter_manager_test')
  
#       # Add the test data
#       connection.exec("INSERT INTO bookmarks ('''') VALUES ('''');")
  
#       bookmarks = Bookmark.all
  
#       expect(bookmarks).to include('''')
     
#     end
#   end