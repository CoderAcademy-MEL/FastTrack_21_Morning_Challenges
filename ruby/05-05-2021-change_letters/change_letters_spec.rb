require_relative "change_letters"

describe "letter changer" do
	it "should have a method" do
		expect(defined? letter_changer).to eql 'method'
	end
	it "should take a letter and a string" do
		expect { letter_changer }.to raise_error(ArgumentError)
		expect { letter_changer("1") }.to raise_error(ArgumentError)
		expect { letter_changer("1", "2", "3") }.to_not raise_error
		expect { letter_changer("1", "2") }.to raise_error(ArgumentError)
	end
	it "should return a string" do
		expect(letter_changer("1", "2", "3").class).to eq String
	end
	it "should swap letters around" do
		expect(letter_changer("b", "abc", "z")).to eq "azc"
		expect(letter_changer("s", "mississippi", "th")).to eq "miththiththippi"
		expect(letter_changer("a", "bcd", 'e')).to eq "bcd"
	end
end