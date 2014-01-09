require 'minitest/autorun'

describe "testing arrays and splat" do

	it "should add up the balance elements of an array" do
		something = [
			Pair.new("something", 4), 
			Pair.new("something", 5), 
			Pair.new("something", 6), 
		]
		@whatever = Pairs.new(*something)
		@whatever.add.must_equal 15
	end	
end

class Pair
	attr_reader :name
	attr_accessor :balance 
	def initialize(name, balance)
	 @name = name
	 @balance = Float(balance)
	end
end

class Pairs
	def initialize(*pairs)
	 @pairs = pairs
	end

	def add
		sum = 0
	  @pairs.each {|pair| sum += pair.balance }
	  sum
	end	
end

