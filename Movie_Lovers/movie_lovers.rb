require "sinatra"
require "sinatra/reloader" if development?
require 'imdb'
require_relative "search.rb"

get '/' do
	erb :movies
end

get '/search_film' do
	@search_array = Search.new.film_searching(params[:movie_search]).movies.take(9)
	erb :search_movie
end


