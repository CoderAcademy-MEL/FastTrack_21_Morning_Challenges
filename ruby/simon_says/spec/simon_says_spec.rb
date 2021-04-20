require_relative '../simon_says'

describe 'simon_says' do
  context 'when the method is properly defined' do
    it 'be defined' do
      expect(defined?(simon_says)).to eql('method')
    end

    it 'takes a single argmuent' do
      expect(method(:simon_says).parameters.length).to eql(1)
    end
  end

  context 'Cases where input is an isogram and should return true' do
    it 'returns the correct result when given ["Simon says add 4", "Simon says add 6", "Then add 5"]' do
      expect(simon_says([
                          'Simon says add 4',
                          'Simon says add 6',
                          'Then add 5'
                        ])).to eql(10)
    end

    it "returns the correct result when given ['Susan says add 10', 'Simon says add 3', 'Simon says multiply by 8'] " do
      expect(simon_says([
                          'Susan says add 10',
                          'Simon says add 3',
                          'Simon says multiply by 8'
                        ])).to eql(10)
    end
    it "returns the correct result when given ['Susan says add 10', 'Simon says add 3', 'Simon says multiply by 8'] " do
      expect(simon_says([
                          'Firstly, add 4',
                          'Simeon says subtract 100'
                        ])).to eql(0)
    end
  end
end
