require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require 'sinatra/activerecord'
require './models'

get '/' do
    erb :index
end

post '/formpost' do
    FormPost.create(
        name: params[:name],
        age: params[:age],
        gender: params[:gender],
        grade: params[:grade],
        email: params[:email],
        gender: params[:gender],
        password: params[:password],
        date: params[:date],
        content: params[:content]
    )
    redirect '/'
end

get '/result' do
    @result = FormPost.all
    erb :result
end