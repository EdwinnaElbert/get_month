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
# gets an array with all movies from user's .txt file
processed_file = fopen
processed_file.each do |line|
  filmary.push(line.split(/ \(/).first.split(/\. /).last)
end
# search for a movie on www.filmaffinity.com
def get_gnr(film)
  search1 = FilmAffinity::Search.new(film)
  id = search1.movies.first.id
  mov = FilmAffinity::Movie.new(id, film)
  mov.genres
rescue
end

filmary.each do |movie|
  genrary.push(get_gnr(movie)).flatten!
end
# get genres hash
myh = Hash[*genrary.frequency.sort_by(&:last).reverse.flatten]
myh.each { |g, i| puts "#{g}: #{i}" }
processed_file.close
