$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pry'

def gross_for_director(d)
  total = 0
  index = 0
  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end
  total
 #binding.pry
end

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
  #binding.pry
end

def list_of_directors(source)
  list_index = 0 
  list = []
    while list_index < source.count do
    list << source[list_index][:name]
    list_index += 1
    end 
  list
  #binding.pry
end

def total_gross(source)
  combined_total = 0
  total_index = 0 
  dt = directors_totals(source)
  lod = list_of_directors(source)
    while total_index < dt.length do
    combined_total += dt[lod[total_index]]
    total_index += 1
    end 
  combined_total
  #binding.pry
end


