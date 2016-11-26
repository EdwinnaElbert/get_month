require 'facets'
require 'bundler/setup'
require 'filmaffinity'
Bundler.require :default
FilmAffinity.configure do |config|
  config.imgur_id = 'Your-imgur-client-id'
  config.language = 'EN'
end
filmary = []
genrary = []

# gets the filename from user input
begin
def fopen
  puts 'Enter filename (e.g. my_films.txt) or it will load the default file.'
  File.open(gets.chomp)
rescue
  File.open('films.txt')
rescue
  puts 'invalid filename or file does not exist'
  fopen
end
end
# gets an array with all movies
processed_file = fopen
processed_file.each { |line| filmary.push(line.split(/ \(/).first.split(/\. /).last) }
# get genres hash
filmary.each { |film|
  begin
    search1 = FilmAffinity::Search.new(film)
    id = search1.movies.first.id
    mov = FilmAffinity::Movie.new(id, film)
    genre = mov.genres
    genrary.push(genre).flatten!
  rescue
    puts "No matches found for #{film}"
  end
}
puts genrehash = Hash[*genrary.frequency.sort_by(&:last).reverse.flatten ]

processed_file.close
