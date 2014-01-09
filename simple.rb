require 'minitest/autorun'

describe "testing arrays and splat" do

	it "should add up the elements of an array" do
		something = [4, 5, 6]
		add_new(*something).must_equal 15
	end	
end

def add(i, j)
    i + j
end
pair = [6, 10]
puts add *pair

def add_new(*pairs)
	sum = 0
  pairs.each {|pair| sum += pair }
  sum
end
pairs = [6, 10, 12, 13]
puts add_new *pairs