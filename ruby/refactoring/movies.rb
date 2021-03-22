def display_menu
  puts '1. A New Hope'
  puts '2. Back to the Future'
  puts '3. The Matrix'
end
def user_selection
  print 'Enter your choice (1-3) > '
  movie_number = gets.chomp
end
def display_movie(movie)
  puts movie[:title]
  puts "Released: #{movie[:year]}"
  puts "Directed by: #{movie[:director]}"
  puts "Staring:"
  movie[:actors].each do |actor|
    puts "#{actor[:name]} as #{actor[:role]}"
  end
end

# Movie Data
movies = {
  '1' => {
    title: 'A New Hope',
    year: 1977,
    director: 'George Lucas',
    actors: [
      { name: 'Mark Hamil', role: 'Luke Skywalker' },
      { name: 'Harrison Ford', role: 'Han Solo' },
      { name: 'Carrie Fisher', role: 'Leia Organa'}
    ]
  },
  '2' => {
    title: 'Back to the Future',
    year: 1985,
    director: 'Robert Zemeckis',
    actors: [
      { name: 'Michael J. Fox', role: 'Marty McFly' },
      { name: 'Christopher Lloyd', role: 'Doc' },
      { name: 'Lea Thompson', role: 'Lorraine Baines'}
    ]
  },
  '3' => {
    title: 'The Matrix',
    year: 1999,
    director: 'Lana & Lilly Wachowski',
    actors: [
      { name: 'Keanu Reeves', role: 'Neo' },
      { name: 'Laurence Fishburne', role: 'Morpheus' },
      { name: 'Carrie-Anne Moss', role: 'Trinity' }
    ]
  },
}

# Program
display_menu
selection = user_selection
# Check if the key exists
if movies.key? selection
  display_movie(movies[selection])
else
  puts 'No movie data for that choice!'
end

puts 'Goodbye!'