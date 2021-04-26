require_relative 'hashtag_generator'

describe 'hashtag_generator' do
  context 'when the method is properly defined' do
    it "be defined" do
      expect(defined?(hashtag_generator)).to eql('method')
    end

    it 'takes a single argmuent' do
      expect(method(:hashtag_generator).parameters.length).to eql(1)
    end

  end

  context 'Cases where input is valid for hashtag_generator' do
    it 'returns the correct hash tag format for coder academy' do
      expect(hashtag_generator('coder academy')).to eql('#CoderAcademy')
    end

    it 'returns the correct hash tag format for wHat a gREAT day for rUby' do
      expect(hashtag_generator('wHat a gREAT day for rUBy')).to eql('#WHatAGREATDayForRUBy')
    end

    it 'returns the correct hash tag format for a string that is larger than 140 characters but becomes shorter than 140 after spaces are removed' do
      expect(hashtag_generator('a ' * 139)).to eql('#' + ('A' * 139))
    end
  end

  context 'Cases where input is an hashtag_generator should return a boolean' do
    it 'returns false given an empty string' do
      expect(hashtag_generator('')).to equal(false)
    end

    it 'returns false when given a string that will turn out be 140 characters long' do
      expect(hashtag_generator('h ' * 141)).to eql(false)
    end
  end

end
