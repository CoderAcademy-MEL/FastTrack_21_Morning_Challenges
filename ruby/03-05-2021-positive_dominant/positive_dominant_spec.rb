require_relative 'positive_dominant'

describe "it should" do
    it "check positive_dominant is defined" do
       expect(defined? positive_dominant).to eql("method")
    end
    it "check argument count" do
        expect { positive_dominant( [] ) }.to_not raise_error
        expect { positive_dominant( [], [] ) }.to raise_error(ArgumentError)
    end
    it "return true when there are more unique positive numbers" do
      expect(positive_dominant([5, 99, -3, -8, 832, -3, -8])).to be true
    end
	it "return false when there are more positive numbers, but less unique positive numbers" do
      expect(positive_dominant([2, 2, 2, -5, 2, 2, 2, -3])).to be false
    end
	it "return false when there are the same amount of unique positive and negative numbers" do
      expect(positive_dominant([2, 4, 6, -6, -4, -2])).to be false
    end
	it "return false for an empty array" do
      expect(positive_dominant([])).to be false
    end
	it "return true when there are only positive numbers" do
      expect(positive_dominant([2234])).to be true
    end
	it "return true when there are only positive numbers" do
      expect(positive_dominant(["String", 34, true])).to be true
    end
	it "return true when there is only a zero in the array" do
      expect(positive_dominant([0])).to be true
    end
end