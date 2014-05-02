require 'sinatra'
require './room.rb'

get '/' do
	erb :index
end

get '/index.html' do
	erb :index
end

get '/about.html' do
	erb :about
end

get '/reserve.html' do
	erb :reserve
end

get '/catalog.html' do
	erb :catalog
end

get '/contact.html' do
	erb :contact
end

post '/complete' do
	@new = Room.new params[:name], params[:rooms], params[:indate], params[:outdate]
	erb :complete
end
