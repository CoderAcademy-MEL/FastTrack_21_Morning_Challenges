# Normally you would have one class per file
class Actor
  attr_reader :name, :role

  def initialize(name, role)
    @name = name
    @role = role
  end

  def display
    puts "#{name} as #{role}"
  end
end

class Movie
  attr_reader :title, :year, :director, :actors

  def initialize(title, year, director, actors)
    @title = title
    @year = year
    @director = director
    @actors = actors
  end

  def display
    puts "Title: #{title}"
    puts "Released: #{year}"
    puts "Directed by: #{director}"
    puts 'Staring:'
    actors.each do |actor|
      actor.display
    end
  end
end
actors = [
  Actor.new('Mark Hamil', 'Luke Skywalker'),
  Actor.new('Harrison Ford', 'Han Solo'),
  Actor.new('Carrie Fisher', 'Leia Organa')
]

movie = Movie.new('A New Hope', 1977, 'George Lucas', actors)
movie.display
