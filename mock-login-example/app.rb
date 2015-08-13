require "sinatra"
require "sinatra/reloader" if development?

enable :sessions

get '/' do
  @current_user = find_user_by_id(session[:user_id])
  erb :index
end

get '/login' do
  erb :login, layout: :layout
end

post '/login' do
  user = login(params[:username], params[:password])
  unless user.nil?
    session[:user_id]   = user[:id]
    redirect to('/')
  else
    @error = "User not found"
    erb :login
  end
end

def users
  [{
    id: 1,
    username: 'rick',
    name: 'Rick Grimes',
    password: 'twd'
  }, {
    id: 2,
    username: 'owl',
    name: 'Night Owl',
    password: 'wm'
  }, {
    id: 3,
    username: 'batman',
    name: 'Bruce Wayne',
    password: 'bm'
  }]
end

def login(username, password)
  users.select { |user| user[:username] == username && user[:password] == password }.first
end

def find_user_by_id(id)
  users.select { |user| user[:id] == id }.first
end
