class LinkController < ApplicationController
	def redirect
		link = Link.find_by(shorten: params[:shortlink])
		redirect_to link.url
	end
end
