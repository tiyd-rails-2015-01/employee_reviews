require './employees'
require './departments'

mike = Employee.new("Mike", 100000)
john = Employee.new("John", 50000)
management = Department.new("Management")
management.add(mike)
management.add(john)

john.satisfactory = false

#puts management.dept_raise

# puts "Who would you like to review?"
#
# chomp = @name
#
# puts "Review #{@name}"
#
# gets.chomp = @review
#
#
#
 puts management.dept_salary
#
 puts mike.give_raise

 puts management.dept_raise
#
