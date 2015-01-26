require './employee'

class Department
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = []
  end

  def add_employee(employee)
    @roster << employee
  end

  def total_salary
    total = 0
    @roster.each do |employee|
    total += employee.salary
    end
    return total
  end
end
