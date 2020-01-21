require 'pg'
require 'sinatra/base'
require 'uri' # goes into the post when sumbittiing a url
require ''

class ChitterManager < Sinatra::Base

    get '/' do
        "Hello Peeper!" "Welcome to Chitter"
        erb :index
    end

    get '/peeps' do
        @peeeps = Peeps.all
        erb :index
    end

    get '/peeps/new' do
        @peeeps = Peeps.all
        erb :peeps
    end

    post '/peeps/lastest' do

    end


    run! if app_file == $0
end