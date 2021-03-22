# Declare the structs
Movie = Struct.new(:title, :year, :director, :actors)
Actor = Struct.new(:name, :role)

# Methods to display data
def display_actor(actor)
  puts "#{actor.name} as #{actor.role}"
end

def display_movie(movie)
  puts movie.title
  puts "Released: #{movie.year}"
  puts "Directed by: #{movie.director}"
  puts "Staring:"
  movie.actors.each do |actor|
    display_actor(actor)
  end
end

# Create an instance of movie with an array of 
# Actor instances
star_wars = Movie.new(
  'A New Hope',
  1977,
  'George Lucas',
  [
    Actor.new('Mark Hamil', 'Luke Skywalker'),
    Actor.new('Harrison Ford', 'Han Solo'),
    Actor.new('Carrie Fisher', 'Leia Organa')
  ]
)

display_movie(star_wars)
