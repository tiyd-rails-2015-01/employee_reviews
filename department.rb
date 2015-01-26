require './employee'

class Department

  def initialize(department_name)
    @department_name = department_name
    @employees = []
  end

  def add_employee(name)
    name = name.name
    @employees << name
  end

  def employees
    @employees
  end

end
