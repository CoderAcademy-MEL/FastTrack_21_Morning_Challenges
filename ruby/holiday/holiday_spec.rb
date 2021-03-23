# **DON'T** change this file! But feel free to read through.
require_relative 'holiday.rb'

RSpec.describe Holiday do
  subject(:holiday) { described_class.new('Festivus', 23, 'December') }

  context 'Initializing a new holiday' do
    it 'requires parameters to initialize a new object' do
      expect{ described_class.new }.to raise_error(ArgumentError)
    end
    
    it 'creates a new object given 3 parameters' do
      expect{ described_class.new('holiday', 1, 'January') }.to_not raise_error
    end
  end

  context 'Accessor methods' do
    it 'should have accessors for the holiday name' do
      expect(holiday.name).to eq('Festivus')
      expect(holiday).to respond_to(:name=) 
    end

    it 'should have accessors for the holiday day' do
      expect(holiday.day).to eq(23)
      expect(holiday).to respond_to(:day=) 
    end

    it 'should have accessors for the holiday month' do
      expect(holiday.month).to eq('December')
      expect(holiday).to respond_to(:month=) 
    end
  end

  context 'using the #display method' do
    it 'prints itself as a string to the terminal' do
      expected = "Festivus is held on the 23rd of December\n"
      expect { holiday.display }.to output(expected).to_stdout
    end

    it 'uses the correct ordinal indicator (1st, 2nd, etc)' do
      new_years_day = described_class.new('New Years Day', 1, 'January')
      expected = "New Years Day is held on the 1st of January\n"
      expect { new_years_day.display }.to output(expected).to_stdout
    end
  end

  context 'using the #in_same_month method' do
    it 'correctly identifies holidays in the same month' do
      other_holiday = described_class.new('Christmas', 25, 'December')
      expect(holiday.in_same_month(other_holiday)).to be(true)
    end

    it 'correctly identifies holidays not in the same month' do
      other_holiday = described_class.new('Waffle Day', 25, 'March')
      expect(holiday.in_same_month(other_holiday)).to be(false)
    end
  end
end