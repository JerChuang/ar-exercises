require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "A", last_name: "B", hourly_rate: 60)
@store1.employees.create(first_name: "C", last_name: "D", hourly_rate: 6)
@store1.employees.create(first_name: "E", last_name: "F", hourly_rate: 61)
@store2.employees.create(first_name: "G", last_name: "H", hourly_rate: 1)
@store2.employees.create(first_name: "I", last_name: "J", hourly_rate: 10)
@store2.employees.create(first_name: "K", last_name: "L", hourly_rate: 20)
@store2.employees.create(first_name: "M", last_name: "N", hourly_rate: 6000)




# table.references :store
# table.column :first_name, :string
# table.column :last_name, :string
# table.column :hourly_rate, :integer
# table.timestamps null: false
