require './department'
require './employee'
#
# oliver = Employee.new( "Oliver Twist", 1.0 )
# oliver.parseReviewText

zeke = Employee.new( "Zeke", 500 )
yvonne = Employee.new( "Yvonne", 500 )
xavier = Employee.new( "Xavier", 500 )
wanda = Employee.new( "Wanda", 500 )

dept = Department.new( "The Department" )

dept.addEmployee( zeke )
dept.addEmployee( yvonne )
dept.addEmployee( xavier )
dept.addEmployee( wanda )

dept.parseReviews

puts "#{zeke.name} gets #{zeke.salary}"
puts "#{yvonne.name} gets #{yvonne.salary}"
puts "#{xavier.name} gets #{xavier.salary}"
puts "#{wanda.name} gets #{wanda.salary}"

puts "Dole out 1000 worth of raises:"
dept.doleOutRaises(1000)

puts "#{zeke.name} gets #{zeke.salary}"
puts "#{yvonne.name} gets #{yvonne.salary}"
puts "#{xavier.name} gets #{xavier.salary}"
puts "#{wanda.name} gets #{wanda.salary}"
