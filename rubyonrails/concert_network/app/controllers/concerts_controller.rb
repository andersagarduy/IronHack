class ConcertsController < ApplicationController
	def index
		@concerts = Concert.all
	end

	def new
		@concert = Concert.new
	end

	def create
		@concert = Concert.new concert_params
		if @concert.save
			flash[:notice] = "The concert has been added correctly!!"
			redirect_to concerts_path
		else
			@errors = @concert.errors.full_messages
			flash.now[:alert] = "The concert hasn´t been added correctly!!"
			render 'new'
		end
	end

	def destroy
		@concert = Concert.find params[:id]
		@concert.destroy
		redirect_to concerts_path
	end

	def show
		@concert = Concert.find params[:id]
	end


	private
	def concert_params
		return params.require(:concert).permit(:band, :city, :date, :price, :description)

	end
end
