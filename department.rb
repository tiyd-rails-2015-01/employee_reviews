require './employee'

class Department

  attr_reader :name

  def initialize(name)
    @name = name
    @employees = []
    @employee_names = []
    @employee_salaries = []
    @top_performers = []
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

  def distribute_raises(budget)
    @employees.each do |employee|
      if employee.satisfactory?
        @top_performers << employee
      end
    end
    raise_amount = (budget / @top_performers.length).round
    @top_performers.each do |lucky_employee|
      lucky_employee.give_raise_with_dollars(raise_amount)
    end
  end

end
