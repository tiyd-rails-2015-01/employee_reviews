require './employee'

class Department
  attr_reader :dept_name

  def initialize(dept_name)
    @dept_name = dept_name
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def employees
    @employees
  end

  def salary_list
    sum = 0
    @employees.each { |employee| sum += employee.salary }
    return sum
  end
#I want this method to take my employee array, separate the numbers, add them
#together and return the sum
end
