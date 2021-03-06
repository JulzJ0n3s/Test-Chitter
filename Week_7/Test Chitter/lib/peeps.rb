require './spec/database_helper'


class Peeps

    attr_reader :id, :title, :peep, :time_id

    def initialize(id:, title:, peep:, time_id:)  
      @id = id 
      @peep = peep
      @title = title
      @time_id = time_id
    end

    def self.all
        connection = PG.connect(dbname: 'chitter_manager_test')
        result = connection.exec('SELECT * FROM chitter_peeps')
        result.map do |peeep| 
        Peeps.new(id: peeep['id'], title: peeep['title'], peep: peeep['peep'], time_id: peeep['time_id'])
        end
    end

    def self.create(title:, peep:)
        connection = PG.connect(dbname: 'chitter_manager_test')
        peeep = connection.exec("INSERT INTO chitter_peeps (peep, title, time_id) VALUES('#{peep}', '#{title}', NOW()) RETURNING id, title, peep, time_id;")
        Peeps.new(id: peeep[0]['id'], title: peeep[0]['title'], peep: peeep[0]['peep'], time_id: peeep[0]['time_id'])
    end


    def self.rev
        connection = PG.connect(dbname: 'chitter_manager_test')
        result = connection.exec('SELECT * FROM chitter_peeps ORDER BY id DESC')
        result.map do |peeep|
        Peeps.new(id: peeep['id'], title: peeep['title'], peep: peeep['peep'], time_id: peeep['time_id'])
        end
    end

end