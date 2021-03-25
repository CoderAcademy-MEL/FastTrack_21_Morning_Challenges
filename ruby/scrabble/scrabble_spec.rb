require_relative 'scrabble'

describe '#word_ranking' do
  it 'should return a single word when only given one word' do
    expect(word_ranking('help')).to eq('help')
  end

  it 'should return the highest ranking word when given two words' do
    expect(word_ranking('longer than')).to eq('longer')
  end

  it 'should return the highest ranking word when given a multi word string' do
    expect(word_ranking('wow this is quite a long sentence')).to eq('sentence')
  end

  it 'should return the first occuring word when two words match' do
    expect(word_ranking('reshow the shower')).to eq('reshow')
  end
  
  it 'should work with high scoring short words' do
    expect(word_ranking('zebra zulu fixed')).to eq('zulu')
  end
end