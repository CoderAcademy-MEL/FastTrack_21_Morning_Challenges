require_relative 'inventor.rb'

# Don't edit this array, but feel free to use it to test your solutions.
INVENTORS = [
  Inventor.new('Albert', 'Einstein', 1879, 1955),
  Inventor.new('Isaac', 'Newton', 1643, 1727),
  Inventor.new('Galileo', 'Galilei', 1564, 1642),
  Inventor.new('Marie', 'Curie', 1867, 1934),
  Inventor.new('Johannes', 'Kepler', 1571, 1630),
  Inventor.new('Nicolaus', 'Copernicus', 1473, 1543),
  Inventor.new('Max', 'Planck', 1858,  1947),
  Inventor.new('Katherine', 'Blodgett', 1898, 1979),
  Inventor.new('Ada', 'Lovelace', 1815, 1852),
  Inventor.new('Sarah E.', 'Goode', 1855, 1905),
  Inventor.new('Lise', 'Meitner', 1878, 1968),
  Inventor.new('Hanna', 'Hammarström', 1829, 1909)
].freeze

def first_and_last_name(inventors)
  inventors.map do |inventor|
    "#{inventor.first} #{inventor.last}"
  end
	# return a new array that contains the inventors first and last names as a string
end
first_and_last_name(INVENTORS)

def born_before_1800(inventors)
  inventors.select do |inventor|
    inventor.born < 1800
  end
	# return an array of Inventors who were born before 1800
end
born_before_1800(INVENTORS)
def total_age(inventors)
  inventors.reduce(0) do |total_age, inventor| 
    puts "Total: #{total_age}"
    total_age += inventor.passed - inventor.born
    total_age
  end
	# return the total age of all the inventors
end
total_age(INVENTORS)
def long_names(inventors)
	# return an array of Inventors who have a first name of 6 or more letters
  inventors.select do |inventor|
    inventor.first.length > 5 
  end
end
long_names(INVENTORS)
def last_name_sort(inventors)
  inventors.sort do |inventor_a, inventor_b|
    inventor_a.last <=> inventor_b.last
  end
	# return a new array sorted by the Inventors last name
end

last_name_sort(INVENTORS)

def find_galilei(sorted_inventors)	 
  sorted = last_name_sort(inventors)
  sorted.index do |inventor|
    inventor.first == 'Galileo' && inventor.last == 'Galilei'
  end
	# using the sorted array from `last_name_sort`, find the index of `Galileo Galilei`
end
