require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

@store1.employees.create(first_name: "O", last_name: "P", hourly_rate: 100).save

puts Employee.find(4).password

