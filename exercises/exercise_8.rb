require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

@store1 = Store.find_by("id = 1")

@employee = @store1.employees.create(first_name: "Steve", last_name: "Carell", hourly_rate: 40)

puts "Newly created employees password: #{@employee.password}"
