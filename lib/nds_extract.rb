$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pry'
def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
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

def list_of_directors(source)
  # Write this implementation
  list_of_directors = []
  director_index = 0 
  while director_index < source.length do
    list_of_directors << source[director_index][:name]
  director_index += 1
  end
  return list_of_directors
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
  director_index = 0
  total_gross = 0 
  while director_index < source.length do
    # puts director_index
    # puts total
    # puts"-"
    index = 0
    total = 0 
    while index < source[director_index][:movies][index].length do
      puts source[director_index][:name]
      puts total = source[director_index][:movies][index][:worldwide_gross]
      puts 'movie' 
      puts index 
      
      
    index += 1
    # binding.pry
    end
    puts total
    puts 'next'
    puts total_gross += total

  director_index += 1   
  end
  # binding.pry
  total_gross
end


