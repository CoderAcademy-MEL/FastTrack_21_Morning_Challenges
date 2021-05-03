require_relative "larger_than_life"

describe "it should" do
    it "check larger_than_life is defined" do
       expect(defined? larger_than_life).to eql("method")
    end
    it "check argument count" do
        expect { larger_than_life( [] ) }.to_not raise_error
        expect { larger_than_life( [], "2" ) }.to raise_error(ArgumentError)
    end
    it "find the larger numbers in an array of positive integers" do
      expect(larger_than_life([3, 13, 11, 2, 1, 9, 5])).to eq([13, 11, 9, 5])
    end
	it "find the larger numbers in an array of mixed integers" do
      expect(larger_than_life([-30, 13, -11, 2, 1, 9, 12])).to eq([13, 12])
    end
	it "return only the last element if the array is in ascending order" do
      expect(larger_than_life([1, 2, 3, 4, 5])).to eq([5])
    end
	it "return an empty array when it receives an empty array" do
      expect(larger_than_life([])).to eq([])
    end
	it "return only the last element when all elements are equal" do
      expect(larger_than_life([2, 2, 2, 2])).to eq([2])
    end
end