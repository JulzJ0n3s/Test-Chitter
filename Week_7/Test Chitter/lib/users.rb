require './spec/database_helper'
require 'bcrypt'

class User

    attr_reader :id, :email, :name

    def initialize(id:, email:, name:)  
      @id = id 
      @email = email
      @name = name
    end

    def self.create(email:, name:, password:)
        encrypted_password = BCrypt::Password.create(password)

        connection = PG.connect(dbname: 'chitter_manager_test')
        peeep = connection.exec("INSERT INTO chitter_users (name, email, password) VALUES('#{name}', '#{email}', '#{password}') RETURNING id, name, email;")
        Users.new(
            id: peeep[0]['id'], 
            name: peeep[0]['title'], 
            email: peeep[0]['peep'], 
        )
    end

    def self.all
        connection = PG.connect(dbname: 'chitter_manager_test')
        result = connection.exec('SELECT * FROM chitter_users')
        result.map do |peeep| 
        Peeps.new(id: peeep['id'], title: peeep['title'], peep: peeep['peep'], time_id: peeep['time_id'])
        end
    end


end