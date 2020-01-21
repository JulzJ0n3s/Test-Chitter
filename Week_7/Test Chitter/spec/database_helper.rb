require './spec/setup_test_database'
require 'pg'

def persisted_data(id:, time_id:)
    connection = PG.connect(dbname: 'chitter_manager_test')
    result = connection.query("SELECT * FROM chitter_peeps WHERE id = '#{id}' AND time_id = '#{time_id}';")
    result.first
end