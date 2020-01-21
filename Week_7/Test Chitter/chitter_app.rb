require 'pg'
require 'sinatra/base'
require './lib/peeps'
require './lib/users'
require './spec/database_helper'
require 'uri' # goes into the post when sumbittiing a url


class ChitterManager < Sinatra::Base

    get '/' do
        "Hello Peeper!" "Welcome to Chitter"
        erb :index
    end

    get '/peeps' do
        @peeeps = Peeps.all
        erb :peeps
    end

    get '/peeps/new' do
        Peeps.create(title: params[:title], peep: params[:peep])
        erb :new
    end

    post '/peeps' do 
        Peeps.create(title: params[:title], peep: params[:peep])
        redirect '/peeps'
    end

    get '/peeps/latest' do
        @latest = Peeps.rev
        erb :latest_peeps
    end

    get '/users/new' do
        erb :users
      end
      
    post '/users' do
        User.create(email: params[:email], password: params[:password])
        redirect '/peeps'
    end



    run! if app_file == $0
end