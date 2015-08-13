class Search
	def film_searching search_word
		#["funny games", "fu"]
		Imdb::Search.new search_word
	end
end