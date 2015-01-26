# require './employee'

class Department

  def initialize(name)
    @department_name = name
    @roster = []
  end

  def add_employee(employee)
    @roster << employee
  end

end
