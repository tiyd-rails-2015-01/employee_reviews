require './employees'
require './departments'

mike = Employee.new("Mike", 100000)
john = Employee.new("John", 50000)
management = Department.new("Management")

puts management.salary
