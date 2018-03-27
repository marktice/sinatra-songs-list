require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:music_app.sqlite3"

require './models'

get '/' do
  @songs = Song.all
  erb :index
end

get '/records' do
  @years = Song.pluck(:year).uniq
  erb :records
end

get '/song/:id' do
  @song = Song.find_by_id(params[:id])
  erb :song
end

get '/:year' do
  @year = params[:year]
  @songs = Song.where(year: @year)
  erb :year
end