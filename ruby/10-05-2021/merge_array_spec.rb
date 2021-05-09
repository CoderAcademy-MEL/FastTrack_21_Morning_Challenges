require_relative "merge_array"

describe "it should" do
    it "check with_our_powers_combined is defined" do
       expect(defined? with_our_powers_combined).to eql("method")
    end
    it "check argument count" do
        expect { with_our_powers_combined( [] ) }.to raise_error(ArgumentError)
        expect { with_our_powers_combined( [], [] ) }.to_not raise_error
    end
    it "merge two arrays of the same length" do
      expect(with_our_powers_combined(["a", "b", "c", "d", "e"], [1, 2, 3, 4, 5])).to eq(["a", 1, "b", 2, "c", 3, "d", 4, "e", 5])
    end
	it "merge two arrays of the differing lengths" do
      expect(with_our_powers_combined([1, 2, 3], ["a", "b", "c", "d", "e", "f"])).to eq([1, "a", 2, "b", 3, "c", "d", "e", "f"])
    end
	it "return an empty array when given two empty arrays" do
      expect(with_our_powers_combined([], [])).to eq([])
    end
	it "merge two arrays if one is empty and the other is not" do
      expect(with_our_powers_combined([], [true, true, true, true, false])).to eq([true, true, true, true, false])
    end
end