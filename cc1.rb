movies = [
  ['Alfonso Cuaron', 'Gravity', '2013'],
  ['Spike Jonze', 'Her', '2013'],
  ['Martin Scorcese', 'The Wolf of Wall Street', '2013']
]

# movie_hash = Hash[movies]

# movie_hash = {}
# movies.each do |director, title|
#   # Update movie hash to set director as key to the title as value
#   movie_hash[director] = title
# end

# movie_hash = movies.to_h

movie_hash = movies.inject({}) do |hash, movie|
  # director = movie[0]
  # title = movie[1]
  # year = movie[2]
  director, title, year = movie
  hash[director] = "#{title} (#{year})"
  hash
end

puts movie_hash
