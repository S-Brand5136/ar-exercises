require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by("id = 1")
@store2 = Store.find_by("id = 2")

@store1.employees.create(first_name: "Bruce", last_name: "Willis", hourly_rate: 25)
@store1.employees.create(first_name: "Matt", last_name: "Damon", hourly_rate: 40)
@store1.employees.create(first_name: "Orlando", last_name: "Bloom", hourly_rate: 40)

@store2.employees.create(first_name: "Anakin", last_name: "Skywalker", hourly_rate: 175)
@store2.employees.create(first_name: "Luke", last_name: "Skywalker", hourly_rate: 90)
@store2.employees.create(first_name: "Ben", last_name: "Solo", hourly_rate: 40)
