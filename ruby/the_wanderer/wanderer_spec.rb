require_relative 'wanderer.rb'

describe '#direction_saver' do
	it 'returns an array' do
		expect(direction_saver(['NORTH'])).to be_a(Array)
	end
	
	it 'returns an empty array if the traveller doesn\'t move' do
		input = ['NORTH', 'SOUTH']
		output = []
		expect(direction_saver(input)).to eq(output)
	end
	
	it "returns a shorter path when one pair can be shortened" do
		input = ['NORTH', 'SOUTH', 'SOUTH', 'WEST']
		output = ['SOUTH', 'WEST']
		expect(direction_saver(input)).to eq(output)
	end
	
  it 'return a shorter path when multiple pairs can be removed' do
    input = ['NORTH', 'SOUTH', 'EAST', 'WEST', 'NORTH']
    output = ['NORTH']
    expect(direction_saver(input)).to eq(output)
  end

	it "returns the path when it can't be optimised" do
		input = ['NORTH', 'EAST', 'SOUTH', 'EAST']
		output = ['NORTH', 'EAST', 'SOUTH', 'EAST']
		expect(direction_saver(input)).to eq(output)
	end
	
	it "returns the path when many nested paths can be removed" do
		input = ['NORTH', 'WEST', 'EAST', 'SOUTH', 'NORTH']
		output = ['NORTH']
		expect(direction_saver(input)).to eq(output)
	end
end