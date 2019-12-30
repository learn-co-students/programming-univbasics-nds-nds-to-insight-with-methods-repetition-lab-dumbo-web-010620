$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source) #director_name = total_gross
  # puts source
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director) #gross_for_director is function to show worldwide_gross
    director_index += 1
  end
 result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source) #Returns Array of Hashes
  # Write this implementation
  # puts source
  array_directors = []
  index = 0

  while index  < source.length do
    array_directors << source[index][:name]
    index += 1
  end

  puts array_directors
  array_directors

end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  total_money = 0
  directors_totals_map = directors_totals(source) #returns hash of names
  director_names = list_of_directors(source)

  index = 0
  while index < director_names.length do
    name = director_names[index]
    total_money += directors_totals_map[name] #this is grabbing the number. [name] is to access value from hash
    index += 1
  end

  puts total_money
  total_money
end
