class MoviesController < ApplicationController
	def index
		

	end

	def show
		@movie = Movie.find_by(name: params[:search])

		unless @movie.present?
			@search = Imdb::Search.new(params[:search]).movies
			render 'imdb'
		end
	end
end
