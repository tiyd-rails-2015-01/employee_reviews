require './employee'


class Department
  def initialize(name)
    @name = name
  end

  def add_employee(name, salary)
    Employee.new(name, salary)
  end
end
