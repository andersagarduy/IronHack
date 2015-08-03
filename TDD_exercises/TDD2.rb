require "rspec"
require_relative "./TDD.rb"


RSpec.describe Calculator do
	before :each do
	@calculator = Calculator.new
	end

	it "returns 0 with an empty string" do
		expect(@calculator.add(" ")).to eq 0
	end

	it "returns the proper sum with 2 numbers" do	
		expect(@calculator.add("2 3")).to eq 5
	end

	it "returns the proper sum with more that 2 numbers" do
		input = (1..100).to_a.join(' ')
		expect(@calculator.add(input)).to eq 5050
	end

	it "returns the proper sum with more that 5 numbers" do
		expect(@calculator.add("2,3,kajehf4,kasgf6")).to eq 15
	end
end





#calculator = Calculator.new
#if calculator.add("1 5") == 6
#	puts "It is OK"
#else
#	puts "It is not OK"
#end