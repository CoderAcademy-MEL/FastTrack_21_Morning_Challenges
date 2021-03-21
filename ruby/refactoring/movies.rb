puts '1. A New Hope'
puts '2. Back to the Future'
puts '3. The Matrix'
print 'Enter your choice (1-3) > '

movie_number = gets.to_i

if movie_number == 1
  puts ' '
  movie_1_title = 'A New Hope'
  puts movie_1_title

  movie_1_release_date = 1977
  puts 'Released: ' + movie_1_release_date.to_s

  movie_1_director = 'George Lucas'
  puts 'Directed by: ' + movie_1_director
  movie_1_first_actor_name = 'Mark Hamil'
  movie_1_second_actor_name = 'Harrison Ford'
  movie_1_third_actor_name = 'Carrie Fisher'

  movie_1_first_actor_role = 'Luke Skywalker'
  movie_1_second_actor_role = 'Han Solo'
  movie_1_third_actor_role = 'Leia Organa'

  puts 'Staring:'
  puts movie_1_first_actor_name + ' as ' + movie_1_first_actor_role
  puts movie_1_second_actor_name + ' as ' + movie_1_second_actor_role
  puts movie_1_third_actor_name + ' as ' + movie_1_third_actor_role

  puts ' '
elsif movie_number == 2
  puts ' '
  movie_2_title = 'Back to the Future'
  puts movie_2_title

  movie_2_release_date = 1985
  puts 'Released: ' + movie_2_release_date.to_s

  movie_2_director = 'Robert Zemeckis'
  puts 'Directed by: ' + movie_2_director

  movie_2_first_actor_name = 'Michael J. Fox'
  movie_2_second_actor_name = 'Christopher Lloyd'
  movie_2_third_actor_name = 'Lea Thompson'

  movie_2_first_actor_role = 'Marty McFly'
  movie_2_second_actor_role = 'Doc'
  movie_2_third_actor_role = 'Lorraine Baines'

  puts 'Staring'
  puts movie_2_first_actor_name + ' as ' + movie_2_first_actor_role
  puts movie_2_second_actor_name + ' as ' + movie_2_second_actor_role
  puts movie_2_third_actor_name + ' as ' + movie_2_third_actor_role

  puts ' '
elsif movie_number == 3
  puts ' '
  movie_3_title = 'The Matrix'
  puts movie_3_title

  movie_3_release_date = 1999
  puts 'Released: ' + movie_3_release_date.to_s

  movie_3_director = 'Lana & Lilly Wachowski'
  puts 'Directed by: ' + movie_3_director

  movie_3_first_actor_name = 'Keanu Reeves'
  movie_3_second_actor_name = 'Laurence Fishburne'
  movie_3_third_actor_name = 'Carrie-Anne Moss'

  movie_3_first_actor_role = 'Neo'
  movie_3_second_actor_role = 'Morpheus'
  movie_3_third_actor_role = 'Trinity'

  puts 'Staring:'
  puts movie_3_first_actor_name + ' as ' + movie_3_first_actor_role
  puts movie_3_second_actor_name + ' as ' + movie_3_second_actor_role
  puts movie_3_third_actor_name + ' as ' + movie_3_third_actor_role

  puts ' '
elsif movie_number != 1 && movie_number != 2 && movie_number != 3
  puts ' '
  puts 'No movie data for that choice!'
  puts ' '
end

puts 'Goodbye!'