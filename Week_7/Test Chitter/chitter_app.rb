require 'pg'
require 'sinatra/base'
require 'uri' # goes into the post when sumbittiing a url

class ChitterManager < Sinatra::Base

    get '/' do
        "Hello Peeper!" "Welcome to Chitter"
        erb :index
    end

    get '/peeps' do
        @peeeps = peeps.all
        erb :index
    end

    get '/peeps/:id/new' do
        erb :index
    end

    post '/peeps/lastest' do

    end


    run! if app_file == $0
end