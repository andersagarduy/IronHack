require "sinatra"
require "sinatra/reloader" if development?

enable :sessions

users = [{
	id: 1,
	username: 'and'
	name: 'Ander Sagarduy',
	password: 'uytrr'
}, {
	id: 2,
	username: 'bel'
	name: 'Belen Lopez',
	password: 'hdkfjh'
}, {
	id: 3,
	username: 'gar'
	name: 'Jorge Garcia',
	password: 'ljesaflka'
}]

get '/' do 
	erb :loginform
end

get '/login' do
	erb :login, layout: :layout
end

post '/login' do
	user = login(params[:username], params[:password])
	unless user.nil? 
		session[:user_id] = user[:id]
		redirect to('/')
	else
		@error = "User not found"
		erb :login
	end
end

def login username, password
	found = users.select do |user|
	user[:username] == username && user[:password] == password
	end
	return found.first
end




