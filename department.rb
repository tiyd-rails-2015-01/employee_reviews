require './employee'


class Department
  attr_reader :name
  def initialize(name)
    @name = name
    @employees = []
    @employee_names = []
    @employee_salaries = []
  end

  def add_employee(name, salary)
    employee = Employee.new(name, salary)
    @employee_names << name
    @employee_salaries << salary
    @employees << employee
    #this next line is weird; included it to pass the test...
    return employee
  end

  def total_salaries
    @employee_salaries.reduce(:+)
  end
end
