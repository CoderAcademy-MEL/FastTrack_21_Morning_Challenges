require_relative 'spicy'

describe 'it should' do
  it 'check spicy_food is defined' do
    expect(defined? spicy_food).to eql('method')
  end
  it 'check argument count' do
    expect { spicy_food([]) }.to raise_error(ArgumentError)
    expect { spicy_food([], []) }.to_not raise_error
  end
  it 'return the accurate price for only one non-spicy meal' do
    expect(spicy_food(['N'], [34.0])).to eq([17.0, 17.0])
  end
  it 'return the accurate price for only one spicy meal' do
    expect(spicy_food(['S'], [28])).to eq([28.0, 0.0])
  end
  it 'return the accurate price for a mix of meals' do
    expect(spicy_food(%w[S N N S], [12, 18, 17, 15])).to eq([44.5, 17.5])
    expect(spicy_food(%w[S S S S N], [15, 14, 19, 23, 20])).to eq([81.0, 10.0])
  end
  it 'return zero for both people when not given a meal' do
    expect(spicy_food([], [])).to eq([0.0, 0.0])
  end
end
