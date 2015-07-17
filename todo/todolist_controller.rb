require "sinatra"
require "sinatra/reloader" if development?
require "./task.rb"


tasks = []

get '/' do 
	erb :tasks
end


get '/newtask' do
	erb :new_task

end


post '/newtask' do
	tasks << Task.new(params[:add_task], 1)
	@tasks = tasks
	erb :tasks #--> 
end

#post '/task_done' do
	#tasks.shift
	#erb :
#end
	