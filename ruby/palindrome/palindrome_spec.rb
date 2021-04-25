require_relative 'palindrome'

describe 'palindrome?' do
  context 'when the method is properly defined' do
    it "be defined" do
      expect(defined?(palindrome?)).to eql('method')
    end

    it 'takes a single argmuent' do
      expect(method(:palindrome?).parameters.length).to eql(1)
    end

    it 'returns a boolean value' do
      expect(palindrome?('a')).to be_a(TrueClass).or be_a(FalseClass)
    end
  end

  context 'Cases where input is not an palindrome and should return false' do
    it 'returns false given a string that is not the same backwards' do
      expect(palindrome?('hello')).to eql(false)
    end

    it 'returns false given a string with spaces that isnt the same backwards' do
      expect(palindrome?('this string')).to eql(false)
    end

    it 'returns false given a string of numbers that does not read same backward and forwards' do
      expect(palindrome?('2021')).to eql(false)
    end
  end

  context 'Cases where input is an palindrome and should return true' do
    it 'returns true given an empty string' do
      expect(palindrome?('')).to equal(true)
    end

    it 'returns true given a string that is spelled the same backwards' do
      expect(palindrome?('racecar')).to eql(true)
    end

    it 'returns true given a string of numbers that reads same backwards and forwards' do
      expect(palindrome?('10101')).to eql(true)
    end

    it 'returns true given a string with capitals that reads the same backwards and forwards' do
      expect(palindrome?('Anna')).to eql(true)
    end

    it 'return true given a string that is same forward and backwards with capitals and punctuation' do
      expect(palindrome?('Was it a car or a cat I saw?')).to eql(true)
    end

    it 'returns true given a string with punctuation, spaces and capital letters but is still the same backwards' do
      expect(palindrome?("Go hang a salami, I'm a lasagna hog")).to eql(true)
    end
  end

end
