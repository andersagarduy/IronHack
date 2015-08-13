require "rspec"
require_relative "./lexiconomitron.rb"


RSpec.describe Lexiconomitron do
	before :each do
		@lexi = Lexiconomitron.new
    end
	describe "#eat_t" do
		it "removes every letter t from the input" do
      	expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end

    describe "#shazam" do
   		it "reverses the letters inside a given array" do
   		expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sihT", "si", "a", "gnirob", "tset"])	
   		end
	describe "#oompa_loompa" do
		it "it takes the ones which size is three characters of less in the same order" do
		expect(@lexi.oompa_loompa(["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])	
			end
		end
	end
  end
end

