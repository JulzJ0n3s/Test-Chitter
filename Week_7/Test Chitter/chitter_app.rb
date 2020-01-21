require 'pg'
require 'sinatra/base'
require './lib/peeps'
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
        @peeeps = Peeps.all
        erb :new
    end

    post '/peeps' do 
        Peeps.create(peeps: params[:peeps], title: params[:title])
        redirect '/peeps'
    end

    post '/peeps/lastest' do

    end


    run! if app_file == $0
end