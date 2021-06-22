require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Total annual sum: #{Store.sum("annual_revenue")}"
puts "Total annual average: #{Store.average("annual_revenue")}"

@high_earning = Store.where("annual_revenue > 1000000").size

puts "Number of stores outputting more than 100,000: #{@high_earning}"