
def setup_test_database
    connection = PG.connect(dbname: 'chitter_manager_test')

   # Clean the bookmarks table
   connection.exec("TRUNCATE chitter_users, chitter_peeps;")
end
