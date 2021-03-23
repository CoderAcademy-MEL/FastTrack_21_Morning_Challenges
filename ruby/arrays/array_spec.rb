require_relative 'array'

describe 'Inventor array challenge' do
	it 'Returns the first and last names array' do
		names = ['Albert Einstein',
						'Isaac Newton',
						'Galileo Galilei',
						'Marie Curie',
						'Johannes Kepler',
						'Nicolaus Copernicus',
						'Max Planck',
						'Katherine Blodgett',
						'Ada Lovelace',
						'Sarah E. Goode',
						'Lise Meitner',
						'Hanna Hammarström'
						]
		expect(first_and_last_name(INVENTORS)).to eql(names)
	end	
	
	it 'Returns the inventors born before 1800' do
		first_inventor = 'Newton'
		last_inventor = 'Copernicus'
		expected_length = 4
		actual = born_before_1800(INVENTORS)

		expect(actual.length).to eql(expected_length)
		expect(actual.first.last).to eql(first_inventor)
		expect(actual.last.last).to eql(last_inventor)
	end
	
	it 'Returns the total age' do
		total_age = 861
		
		expect(total_age(INVENTORS)).to eql(total_age)
	end
	
	it 'Returns the inventor with names longer than 5 letters' do
		first_inventor = 'Einstein'
		last_inventor = 'Goode'
		expected_length = 6
		actual = long_names(INVENTORS)

		expect(actual.length).to eql(expected_length)
		expect(actual.first.last).to eql(first_inventor)
		expect(actual.last.last).to eql(last_inventor)
	end
	
	it 'Sorts the inventors by last name' do
		first_inventor = 'Blodgett'
		last_inventor = 'Planck'
		actual = last_name_sort(INVENTORS)

		expect(actual.first.last).to eql(first_inventor)
		expect(actual.last.last).to eql(last_inventor)
	end
	
	it 'The sorted array finds Galileo Galilei' do
		index = 4
		sorted = last_name_sort(INVENTORS)
	
		expect(sorted[index].last).to eql('Galilei')
	end
end
