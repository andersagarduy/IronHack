require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	erb :index
end

post '/' do 
	@total = params[:file][:tempfile].read.split('').size
	erb :count
end

get '/time/:what' do
	if params[:what] == 'before'
		@time = DateTime.now.to_time - 5*60*60
	elsif params[:what] == 'after'
		@time = DateTime.now.to_time + 5*60*60
	else
		@time = DateTime.now.to_time
	end
	@comic = "<# Comic Class 2143253243hoihiu23>"
	erb :index
end


			






