$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
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
  direct_list = []
  # binding.pry
  count = 0
  while count < source.length do
    direct_list << source[count][:name]
    count += 1
  end
  return direct_list
end

def total_gross(source)
  total_gross = 0
  index = 0
  direct_list = list_of_directors(source)
  direct_gross = directors_totals (source)
  while index < direct_list.length do
    total_gross += direct_gross[direct_list[index]]
    index += 1
  end
  return total_gross
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
end
p directors_totals(directors_database)
