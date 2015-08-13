require 'sinatra'
require 'sinatra/reloader' if development?


get '/' do
	erb :calculator
end

post '/' do
	@addition = params[:add_one].to_i + params[:add_two].to_i
	erb :result
end

post '/' do
	@substraction = params[:substract_one].to_i - params[:substract_two].to_i
	erb :result
end

post '/' do
	@multiplication = params[:multiply_one].to_i * params[:multiply_two].to_i
	erb :result
end

post '/' do
	@division = params[:divide_one].to_i / params[:divide_two].to_i
	erb :result
end


