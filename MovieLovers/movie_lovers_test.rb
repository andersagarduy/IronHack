require "rspec"
require_relative "./"


RSpec.describe Calculator do
	before :each do
	@calculator = Calculator.new
	end