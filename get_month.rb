#!/usr/bin/env ruby
require 'date'
require 'bundler/setup'
Bundler.require :default
review_date = []
monthary = []
monthname_and_count = []

def fopen
  puts 'Enter filename (e.g. my_films.txt) or it will load the default file.'
  File.open(gets.chomp)
rescue
  File.open('films.txt')
rescue
  puts 'invalid filename or file does not exist'
  fopen
end

def get_date(line)
  /\d\d.\d\d.\d\d/.match(line)
end

def get_month(d)
  Date.strptime(d, '%d.%m.%y').mon
rescue
end

processed_file = fopen

processed_file.each do |line|
  review_date += get_date(line).to_a unless get_date(line).nil?
end

review_date.each do |d|
  monthary.push(get_month(d))
end

(1..12).each do |i|
  monthname_and_count.push(Date::MONTHNAMES[i], monthary.count(i))
end
myh = Hash[*monthname_and_count]
# uncomment the next line if you wish to see a number of films in every month
puts myh
myh.group_by { |_k, v| v }.max.last.each do |arr|
  if arr[1] > 0
    puts arr[0]
  else
    puts 'Invalid input: the file contains no dates.'
    break
  end
end

processed_file.close
