
class Peeps

    attr_reader :id, :title, :peep, :time_id

    def initialize(id:, title:, peep:, time_id:)  
      @id = id 
      @peep = peep
      @title = title
      @time_id = time_id
    end

    def self.all
        connection = ENV['ENVIRONMENT'] == 'test' ? connection = PG.connect(dbname: 'chitter_manager_test') : connection = PG.connect(dbname: 'chitter_manager')
      
        result = connection.exec('SELECT * FROM chitter_peeps')
        result.map do |peeep| 
        Peeps.new(id: peeep['id'], title: peeep['title'], peep: peeep['url'], time_id: peeep['time_id'])
        end
    end

end