require_relative 'isograms'

describe 'isogram?' do
  context 'when the method is properly defined' do
    it "be defined" do
      expect(defined?(isogram?)).to eql('method')
    end

    it 'takes a single argmuent' do
      expect(method(:isogram?).parameters.length).to eql(1)
    end

    it 'returns a boolean value' do
      expect(isogram?('a')).to be_a(TrueClass).or be_a(FalseClass)
    end
  end

  context 'Cases where input is an isogram and should return true' do
    it 'returns true given an empty string' do
      expect(isogram?('')).to equal(true)
    end

    it 'returns true given a string with no repeated characters' do
      expect(isogram?('troublemaking')).to eql(true)
    end
  end

  context 'Cases where input is not an isogram and should return false' do
    it 'returns false given a string with two non consecutive repeated characters' do
      expect(isogram?('eye')).to eql(false)
    end

    it 'returns false given a string with two repeated characters' do
      expect(isogram?('book')).to eql(false)
    end

    it 'returns false given a string with repeated characters that are of a different case' do
      expect(isogram?('moOse')).to eql(false)
    end
  end
end
