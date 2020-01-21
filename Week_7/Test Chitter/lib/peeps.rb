
class Peeps

    def self.all
        connection = PG.connect(dbname: 'chitter_manager')
        
        result = connection.exec('SELECT * FROM chitter_peeps')
        result.map { |bookmark| bookmark['text'] }
    end

end