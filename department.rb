require './employee'

class Department
  attr_reader :name, :roster
  def initialize(name)
    @roster = []
    @name = name
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
    # @roster.reduce(0.0) {|sum, employee| sum += employee.salary}
  end
end
