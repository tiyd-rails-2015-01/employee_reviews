require './employee'


class Department
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def add_employee(name, salary)
    Employee.new(name, salary)
  end
end
